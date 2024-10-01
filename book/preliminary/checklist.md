# Checklist
## Required setup

```{attention}
Please make sure to find some time to go through the below material before
the hackweek.

__Upon completion you__:
<div>
  <input type="checkbox" name="a1">
  <label for="a1">Joined the Slack workspace</label>
</div>
<div>
  <input type="checkbox" name="a2">
  <label for="a2">Created a EarthData Login</label>
</div>
<div>
  <input type="checkbox" name="a3">
  <label for="a3">Created a GitHub account</label>
</div>
<div>
  <input type="checkbox" name="a4">
  <label for="a4">Can log in to the JupyterHub</label>
</div>
<div>
  <input type="checkbox" name="a5">
  <label for="a5">Setup the `git` command after logging into the JupyterHub</label>
</div>
<div>
  <input type="checkbox" name="a6">
  <label for="a6">Can log in to the P-Cluster</label>
</div>
<div>
  <input type="checkbox" name="a7">
  <label for="a7">Update the .bashrc file in your home directory on the P-Cluster</label>
</div>
```

### Slack Account

All of our communication throughout the hackweek will be done using the
{{ '[`{hackweek}` Slack workspace]({url})'.format(hackweek=hackweek, url=slack_workspace_url)}}.
With your invite to the hackweek, you should also have received a separate
email to join the Slack workspace. Upon accepting the invite, please take a moment to
[complete your Slack profile](https://slack.com/help/articles/204092246-Edit-your-profile).
Having your name and picture with your Slack account helps us and your peers
to identify you on Slack and builds a more personal community throughout
the week.

### EarthData Login

We'll have you download some data from NSIDC for your tutorials and projects.
Visit the [Earthdata](https://www.earthdata.nasa.gov/eosdis/science-system-description/eosdis-components/earthdata-login)
help page and learn how to register, access, and login if you don't already have
an account!

### GitHub Account

Everyone attending {{ hackweek }} will require obtaining a GitHub account.
Visit [the GitHub help pages](https://docs.github.com/en/get-started/start-your-journey/creating-an-account-on-github)
if you are in need for an account!

(accessing-jupyterhub)=
### JupyterHub

Many tutorials will be provided for a JupyterHub environment. Please visit the
[Project Pythia Foundation Skills](https://foundations.projectpythia.org/foundations/getting-started-jupyter.html)
to learn more about the components of project Jupyter.

Specifically for the event, we will be using [EIS-Sealevel Open Science Studio](https://book.cryointhecloud.com/intro.html).
We will soon provide onboarding instructions for the OSS.

Optional setup after you are logged in EIS-Sealevel Open Science Studio: 
* Earthdata authentication to automate data downloads:
  [Configure a netrc file](https://wiki.earthdata.nasa.gov/display/EL/How+To+Access+Data+With+cURL+And+Wget)
* Git authentication:

  All content of the hackweek will be shared via GitHub and interacting with the
  website will be done via the `git` command. See our {ref}`setting-up-git`
  to configure your access.

### P-Cluster
[AWS ParallelCluster](https://docs.aws.amazon.com/parallelcluster/latest/ug/what-is-aws-parallelcluster.html) (referred to as P-Cluster) is an open-source cluster management tool developed by Amazon Web Services (AWS). P-Cluster provides users with an HPC-like environment to conduct parallel computing. For the ECCO Hackathon, we have a P-Cluster ready for users to explore MITgcm, reproduce ECCO runs, and engage in many other activities. We have created an introductory [P-Cluster tutorial](pcluster-login.ipynb). Please go through the tutorial and ensure that: 1) you can log in to the P-Cluster, and 2) you have updated your .basrhc in your home directory. 
