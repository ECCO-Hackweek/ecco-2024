# Julia Tutorials

Here, we run MITgcm, analyze ECCO solutions, and compare with Argo -- all comfortably from within julia.

The included notebooks can be run on OSS, p-cluster, your own laptop, or using the [ECCO-Docker](https://github.com/gaelforget/ECCO-Docker) configuration. 

## Tutorial Lineup

| Tutorial | Topics |
| -  | - |
| [Guidelines](../preliminary/Julia_setup.ipynb) | Install, Pkg, Julia basics |
| [Visualise the ECCO model grid](./Julia_ECCO_and_more/MITgcm_ECCO_grid.ipynb) | Grids, Tiles, Maps, Sections, Projections, Polygons|
| [Use the MITgcm.jl interface](./Julia_ECCO_and_more/MITgcm_test_run.ipynb) | setup, build, run, parameters, inputs, outputs|
| [Run ECCO from Julia](./Julia_ECCO_and_more/MITgcm_run_ECCO4.ipynb) | configuration, HPC, diagnostics, perturbations, adjoint runs |
| [Tracking particles in the Ocean](./Julia_ECCO_and_more/particle_tracking.ipynb) | Pathways, Water Masses, Drifters, Floats, Plastics |
| [Explore standard ECCO diagnostics](./Julia_ECCO_and_more/ECCO_diagnostics.ipynb) | Zonal Means, Global Means, Time Series, Maps|
| [Visualize and Compute ECCO transports](./Julia_ECCO_and_more/Transports.ipynb) | Transports, streamfunction, Meridional Transports, Transect Throughflows |
| [Explore the global observing system](./Julia_ECCO_and_more/GOOS.ipynb) | Ocean-OPS, Argo, drifters, OceanRobots.jl |
| [Explore Argo data and compare to ECCO](./Julia_ECCO_and_more/ArgoData.ipynb) | obtaining data, formatting, sampling ECCO, cost funtions |
| [Explore SST data and compare to ECCO](./Julia_ECCO_and_more/SST.ipynb) | OISST data, SST in ECCO, Anomaly Maps, Time Series, Marine Heat Waves |
| [Explore Sea Level Anomalies and ECCO](./Julia_ECCO_and_more/SeaLevelAnomalies.ipynb) | Altimetry, PODAAC, ECCO, GRACE, cost funtions |
| [Explore NSLCT data and compare to ECCO](./Julia_ECCO_and_more/NSLCT.ipynb) | Sea Level Change Team, observations, projections |
| [Automatic Differentiation and Optimization](./Julia_ECCO_and_more/Adjoint_and_Optim_in_Julia.ipynb) | Adjoint, Automatic Differentiation, Optimization, Line Search |
| [Interface to Models in Various Languages](./Julia_ECCO_and_more/ClimateModels_interface.ipynb) | MITgcm, Other Models, Automated Workflows|

## p-cluster

On the p-cluster you can use singularity instead of [ECCO-Docker](https://github.com/gaelforget/ECCO-Docker) directly, as follows.  

```
ssh -L 8888:localhost:8888 -i path_to_id_rsa_key_PCLUSTER -X USERNAME@34.210.1.198

source ecco-2024/book/tutorials/Julia_setup/setup_modules.csh
module add singularity-3.8.3-gcc-11.1.0-wqau5pb

singularity pull ecco-docker.sif docker://gaelforget/ecco-docker
singularity run -p 8888:8888 ecco-docker.sif
```
