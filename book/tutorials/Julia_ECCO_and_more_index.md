# Julia Tutorials

Here, we run MITgcm, analyze ECCO solutions, and compare with Argo -- all comfortably from within julia.

The included notebooks can be run on OSS, p-cluster, your own laptop, or using the [ECCO-Docker](https://github.com/gaelforget/ECCO-Docker) configuration. 

## Tutorial Lineup

| Tutorial | Topics |
| -  | - |
| [Guidelines](../preliminary/Julia_setup.ipynb) | Install, Pkg, Julia basics |
| [Visualise the ECCO model grid](./Julia_ECCO_and_more/MITgcm_ECCO_grid.ipynb) | Maps, Sections, Projections, Polygons|
| [Use the MITgcm.jl interface](./Julia_ECCO_and_more/MITgcm_test_run.ipynb) | Install, Pkg, Julia basics |
| [Run ECCO from Julia](./Julia_ECCO_and_more/MITgcm_run_ECCO4.ipynb) | HPC, diagnostics, perturbations |
| [Tracking particles in the Ocean](./Julia_ECCO_and_more/particle_tracking.ipynb) | Argo data.jl, drifters, etc |
| [Explore standard ECCO diagnostics](./Julia_ECCO_and_more/ECCO_diagnostics.ipynb) | Transports, Time Series, Maps|
| [Visualize and Compute ECCO transports](./Julia_ECCO_and_more/Transports.ipynb) | Transports, Meridional, Transects |
| [Explore the global observing system](./Julia_ECCO_and_more/GOOS.ipynb) | Argo, drifters, etc |
| [Explore Argo data and compare to ECCO](./Julia_ECCO_and_more/ArgoData.ipynb) | Argo data, sampling ECCO, cost funtions |
| [Explore SST data and compare to ECCO](./Julia_ECCO_and_more/SST.ipynb) | Argo data, sampling ECCO, cost funtions |
| [Explore Sea Level Anomalies and ECCO](./Julia_ECCO_and_more/SeaLevelAnomalies.ipynb) | Argo data, sampling ECCO, cost funtions |
| [Explore NSLCT data and compare to ECCO](./Julia_ECCO_and_more/NSLCT.ipynb) | Sea Level, observations, projections |

## p-cluster

On the p-cluster you can use singularity instead of [ECCO-Docker](https://github.com/gaelforget/ECCO-Docker) directly, as follows.  

```
ssh -L 8888:localhost:8888 -i path_to_id_rsa_key_PCLUSTER -X USERNAME@34.210.1.198

source ecco-2024/book/tutorials/Julia_setup/setup_modules.csh
module add singularity-3.8.3-gcc-11.1.0-wqau5pb

singularity pull ecco-docker.sif docker://gaelforget/ecco-docker
singularity run -p 8888:8888 ecco-docker.sif
```
