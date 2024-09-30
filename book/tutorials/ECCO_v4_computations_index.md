# ECCO v4 computations

The [ECCO version 4 Python Tutorial website](https://ecco-v4-python-tutorial.readthedocs.io/) has a wide range of tutorials to help users get started with accessing and using ECCOv4 output. These tutorials cover subjects ranging from loading data files using Python's *xarray* package, to more advanced computations like the steric height, meridional heat transport, and budgets.

## Tutorials hosted in `ecco-2024`

A subset of these tutorials have been copied over to the `ecco-2024` Jupyter book and can be accessed below, to give you a sense of their range and structure. The tutorials hosted here already have settings enabled for cloud access, and will use the `efs_ecco` mounted drive for any downloads.

| Tutorial | Topics |
| - | - |
| [The Dataset and DataArray objects used in the ECCOv4 Python package](./ECCO_v4_computations/ECCO_v4_data_structure_basics.ipynb) | *xarray* intro with ECCOv4 output |
| [Coordinates and Dimensions of ECCOv4 NetCDF files](./ECCO_v4_computations/ECCO_v4_Coordinates_and_Dimensions_of_ECCOv4_NetCDF_files.ipynb) | Arakawa C-grid and ECCOv4 coordinates |
| [Accessing and Subsetting Variables](./ECCO_v4_computations/ECCO_v4_Accessing_and_Subsetting_Variables.ipynb) | *xarray* accessing and subsetting |
| [Memory management in Python](./ECCO_v4_computations/ECCO_v4_Memory_management.ipynb) | Memory management when using *numpy*, *dask*, and *xarray* |
| [Example calculations with scalar quantities](./ECCO_v4_computations/ECCO_v4_Example_calculations_with_scalar_quantities.ipynb) | Sample calculations (e.g., SSH global mean) |
| [Calculating gradients and curl on the ECCO native grid](./ECCO_v4_computations/ECCO_v4_Gradient_calc_on_native_grid.ipynb) | Horizontal derivatives on the C-grid |
| [Steric height](./ECCO_v4_computations/Steric_height.ipynb) | Steric height and thermosteric/halosteric components |
| [Compute meridional heat transport](./ECCO_v4_computations/ECCO_v4_Example_MHT.ipynb) | Meridional heat transport |
| [ECCOv4 Global Volume Budget Closure](./ECCO_v4_computations/ECCO_v4_Volume_budget_closure.ipynb) | Volume budget (minus global mean steric, IB, sea-ice loading) |


## All ECCOv4 Python tutorials

The full set of tutorials are available for viewing on the [website](https://ecco-v4-python-tutorial.readthedocs.io/) and using the links under **All ECCOv4 Python tutorials** below. They can be run by cloning the tutorial [Github repo](https://github.com/ECCO-GROUP/ECCO-v4-Python-Tutorial). Note that in order to run these successfully on the OSS cloud system, you will need to take two steps:

- Do a text search for `incloud_access` and set this variable to `incloud_access = True`.
- Set the download directory (called `ECCO_dir` or sometimes `download_root_dir` in the notebooks) to `ECCO_dir = join(user_home_dir,'efs_ecco','ECCO_V4r4_PODAAC')`.


**Tutorials**:

*Getting started*\
[The ECCO Ocean and Sea-Ice State Estimate](https://ecco-v4-python-tutorial.readthedocs.io/intro.html)\
[ECCO v4 state estimate ocean, sea-ice, and atmosphere fields](https://ecco-v4-python-tutorial.readthedocs.io/fields.html)\
[Python and Python Packages](https://ecco-v4-python-tutorial.readthedocs.io/Installing_Python_and_Python_Packages.html)\
[Using Python to Download ECCO Datasets](https://ecco-v4-python-tutorial.readthedocs.io/Downloading_ECCO_Datasets_from_PODAAC_Python.html)\
[Downloading Subsets of ECCO Datasets](https://ecco-v4-python-tutorial.readthedocs.io/Downloading_Subsets_of_ECCO_Datasets.html)\
[Using *wget* to Download ECCO Datasets from PO.DAAC](https://ecco-v4-python-tutorial.readthedocs.io/Tutorial_wget_Command_Line_HTTPS_Downloading_ECCO_Datasets_from_PODAAC.html)\
[AWS Cloud: getting started and retrieving ECCO datasets](https://ecco-v4-python-tutorial.readthedocs.io/AWS_Cloud_getting_started.html)\
[Tutorial Overview](https://ecco-v4-python-tutorial.readthedocs.io/Tutorial_Introduction.html)

*ECCO data structures*\
[The Dataset and DataArray objects used in the ECCOv4 Python package](https://ecco-v4-python-tutorial.readthedocs.io/ECCO_v4_data_structure_basics.html)\
[Coordinates and Dimensions of ECCOv4 NetCDF files](https://ecco-v4-python-tutorial.readthedocs.io/ECCO_v4_Coordinates_and_Dimensions_of_ECCOv4_NetCDF_files.html)

*Input/output, data structure manipulation*\
[Loading the ECCOv4 native model grid parameters](https://ecco-v4-python-tutorial.readthedocs.io/ECCO_v4_Loading_the_ECCOv4_native_model_grid_parameters.html)\
[Loading the ECCOv4 state estimate fields on the native model grid](https://ecco-v4-python-tutorial.readthedocs.io/ECCO_v4_Loading_the_ECCOv4_state_estimate_fields_on_the_native_model_grid.html)\
[ECCOv4 Loading llc binary files in the ‘compact’ format](https://ecco-v4-python-tutorial.readthedocs.io/ECCO_v4_Loading_LLC_compact_binary_files.html)\
[Combining multiple `Datasets`](https://ecco-v4-python-tutorial.readthedocs.io/ECCO_v4_Combining_Multiple_Datasets.html)\
[Saving `Datasets` and `DataArrays` to NetCDF](https://ecco-v4-python-tutorial.readthedocs.io/ECCO_v4_Saving_Datasets_and_DataArrays_to_NetCDF.html)

*Operating on data variables*\
[Accessing and Subsetting Variables](https://ecco-v4-python-tutorial.readthedocs.io/ECCO_v4_Accessing_and_Subsetting_Variables.html)\
[Operating on Numpy arrays](https://ecco-v4-python-tutorial.readthedocs.io/ECCO_v4_Operating_on_Numpy_Arrays.html)\
[Memory management in Python](https://ecco-v4-python-tutorial.readthedocs.io/ECCO_v4_Memory_management.html)

*Plotting & interpolation*\
[Plotting Tiles](https://ecco-v4-python-tutorial.readthedocs.io/ECCO_v4_Plotting_Tiles.html)\
[Interpolating fields from the model llc grid to a regular lat lon grid](https://ecco-v4-python-tutorial.readthedocs.io/ECCO_v4_Interpolating_Fields_to_LatLon_Grid.html)

*Scalar and vector calculations*\
[Example calculations with scalar quantities](https://ecco-v4-python-tutorial.readthedocs.io/ECCO_v4_Example_calculations_with_scalar_quantities.html)\
[Calculating gradients and curl on the ECCO native grid](https://ecco-v4-python-tutorial.readthedocs.io/ECCO_v4_Gradient_calc_on_native_grid.html)

*Intro to PO Tutorials*\
[Intro to PO Tutorials: Getting Started](https://ecco-v4-python-tutorial.readthedocs.io/Intro_to_PO_start.html)\
[Part 1: Geostrophic balance](https://ecco-v4-python-tutorial.readthedocs.io/Geostrophic_balance.html)\
[Part 2: Thermal Wind](https://ecco-v4-python-tutorial.readthedocs.io/Thermal_wind.html)\
[Part 3: Steric height](https://ecco-v4-python-tutorial.readthedocs.io/Steric_height.html)

*More advanced calculations*\
[Compute meridional heat transport](https://ecco-v4-python-tutorial.readthedocs.io/ECCO_v4_Example_MHT.html)\
[Compute MOC along the approximate OSNAP array from ECCO](https://ecco-v4-python-tutorial.readthedocs.io/ECCO_v4_Example_OSNAP.html)\
[ECCOv4 Global Volume Budget Closure](https://ecco-v4-python-tutorial.readthedocs.io/ECCO_v4_Volume_budget_closure.html)\
[Global Heat Budget Closure](https://ecco-v4-python-tutorial.readthedocs.io/ECCO_v4_Heat_budget_closure.html)\
[Salt, Salinity and Freshwater Budgets](https://ecco-v4-python-tutorial.readthedocs.io/ECCO_v4_Salt_and_salinity_budget.html)\
[Calculate ocean thermal forcing from ECCOv4r4 data, direct from PO.DAAC S3 storage](https://ecco-v4-python-tutorial.readthedocs.io/ECCO_v4_Calculating_the_ECCOv4_ocean_thermal_forcing.html)