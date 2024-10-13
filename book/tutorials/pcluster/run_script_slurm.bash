#!/bin/bash
#SBATCH -J ECCOv4r4
#SBATCH --nodes=5
#SBATCH --ntasks-per-node=36
#SBATCH --time=24:00:00
#SBATCH --exclusive
#SBATCH --partition=sealevel-c5n18xl-demand
#SBATCH --mem-per-cpu=1GB
#SBATCH -o ECCOv4r4-%j-out
#SBATCH -e ECCOv4r4-%j-out

# Initialize and set up the environment.
umask 022
ulimit -s unlimited
source /etc/profile
source /shared/spack/share/spack/setup-env.sh
source /usr/share/modules/init/sh

# Load modules
module purge
module load intel-oneapi-compilers-2021.2.0-gcc-11.1.0-adt4bgf
module load intel-oneapi-mpi-2021.2.0-gcc-11.1.0-ibxno3u
module load netcdf-c-4.8.1-gcc-11.1.0-6so76nc
module load netcdf-fortran-4.5.3-gcc-11.1.0-d35hzyr
module load hdf5-1.10.7-gcc-9.4.0-vif4ht3
module list

# Set environment varibales
export FORT_BUFFERED=1
export MPI_BUFS_PER_PROC=128
export MPI_DISPLAY_SETTINGS=""

# Set processor count and directory paths
nprocs=96
basedir="./"
inputdir=/efs_ecco/owang/ECCO/V4/r4/WORKINGDIR/ECCOV4/release4/input/

# Create run directory
if [ -d "${basedir}/run" ]; then
    echo 'Directory "run" exists.'
    echo 'Please rename/remove it and re-submit the job.'
    exit 1
fi

mkdir -p "${basedir}/run"  
cd "${basedir}/run" || exit  # Change directory and exit if it fails

# Link input files
ln -s ../namelist/* .
ln -s ${inputdir}/input_init/* .
ln -s ${inputdir}/misc/tools/mkdir_subdir_diags.py .
ln -s ${inputdir}/data_constraints/data_error/*/* .
ln -s ${inputdir}/data_constraints/*/* .
ln -s ${inputdir}/input_forcing/adjusted/eccov4r4* .
ln -s ${inputdir}/input_forcing/other/*.bin .
ln -s ${inputdir}/input_forcing/control_weights/* .
ln -s ${inputdir}/native_grid_files/tile*.mitgrid .

# 3-month run (1/1992–3/1992). For 26 years (1992–2017), comment out the next 3 lines.
unlink data
cp -p ../namelist/data .
sed -i '/#nTimeSteps=2160,/ s/^#//; /nTimeSteps=227903,/ s/^/#/' data

# Turn off the profiles package, as there are some issues using netCDF on the P-Cluster
unlink data.pkg
cp -p ../namelist/data.pkg . 
sed -i '/useProfiles=.TRUE./ s/^/#/' data.pkg

# Run the Python script to create diagnostic subdirectories
python mkdir_subdir_diags.py

# Copy the mitgcmuv executable to the current directory, preserving the timestamp and permissions
cp -p ../build/mitgcmuv .
# Run the mitgcmuv executable with MPI using the specified number of processes
mpirun -np "${nprocs}" ./mitgcmuv
