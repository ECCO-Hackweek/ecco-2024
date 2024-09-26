# ECCO data structure on PO.DAAC (NASA Earthdata Cloud)

On PO.DAAC and in the NASA Earthdata Cloud, ECCO output is organized in the following hierarchy:

- **Dataset:** Typically contains a few variables, spanning the time range of the ECCO v4r4 output (currently 1992-2017). Most datasets are divided (in the time dimension) into hundreds or thousands of granules.

    - **Granule:** Dataset variables at a specific time (monthly mean, daily mean, or snapshot). Exceptions are 1-D time series where the entire dataset only consists of one granule.

        - **Variable:** A specific geophysical parameter (or flux) representing the state of the ocean, atmosphere, or sea ice/snow cover. Individual variables are not visible through the NASA Earthdata website, but can be seen after a granule file has been opened.


Each dataset has a dataset code called a `ShortName` which is used to identify it on the cloud. In order to download particular variable(s), you need to identify the `ShortName` associated with the dataset containing those variables. You can search for the variables in the linked text files below, or download these files for your reference.

## Dataset ShortNames and variables associated with them

[ECCO v4r4 llc90 Grid Dataset Variables - Monthly Means](https://raw.githubusercontent.com/ECCO-GROUP/ECCO-v4-Python-Tutorial/master/varlist/v4r4_nctiles_monthly_varlist.txt)

[ECCO v4r4 llc90 Grid Dataset Variables - Daily Means](https://raw.githubusercontent.com/ECCO-GROUP/ECCO-v4-Python-Tutorial/master/varlist/v4r4_nctiles_daily_varlist.txt)

[ECCO v4r4 llc90 Grid Dataset Variables - Daily Snapshots](https://raw.githubusercontent.com/ECCO-GROUP/ECCO-v4-Python-Tutorial/master/varlist/v4r4_nctiles_snapshots_varlist.txt)

[ECCO v4r4 0.5-Deg Interp Grid Dataset Variables - Monthly Means](https://raw.githubusercontent.com/ECCO-GROUP/ECCO-v4-Python-Tutorial/master/varlist/v4r4_latlon_monthly_varlist.txt)

[ECCO v4r4 0.5-Deg Interp Grid Dataset Variables - Daily Means](https://raw.githubusercontent.com/ECCO-GROUP/ECCO-v4-Python-Tutorial/master/varlist/v4r4_latlon_daily_varlist.txt)

[ECCO v4r4 Time Series and Grid Parameters](https://raw.githubusercontent.com/ECCO-GROUP/ECCO-v4-Python-Tutorial/master/varlist/v4r4_tseries_grid_varlist.txt)


Note that unlike earlier releases of ECCO v4, in v4r4 all monthly mean variables are also available for download as daily means. Snapshots (typically at daily intervals) are available for a few variables, and can be used to help close budgets as shown in later tutorials.