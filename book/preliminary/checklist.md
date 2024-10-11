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
  <label for="a2">Created a GitHub account</label>
</div>
<div>
  <input type="checkbox" name="a3">
  <label for="a3">Can log in to the OSS JupyterHub</label>
</div>
<div>
  <input type="checkbox" name="a4">
  <label for="a4">Set up GitHub authentication on OSS</label>
</div>
<div>
  <input type="checkbox" name="a5">
  <label for="a5">Created an EarthData login, with credentials on OSS</label>
</div>
<div>
  <input type="checkbox" name="a6">
  <label for="a6">Can log in to the P-Cluster</label>
</div>
<div>
  <input type="checkbox" name="a7">
  <label for="a7">Update the .bashrc file in your home directory on the P-Cluster</label>
</div>
<div>
  <input type="checkbox" name="a8">
  <label for="a8">Set up Julia on the P-Cluster</label>
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


### GitHub account

Everyone attending {{ hackweek }} will need to have a GitHub account.
Visit [the GitHub help pages](https://docs.github.com/en/get-started/start-your-journey/creating-an-account-on-github)
if you are in need for an account!

(accessing-jupyterhub)=
### Open Science Studio (OSS) JupyterHub

Many tutorials will be provided for a JupyterHub environment. Please visit the
[Project Pythia Foundation Skills](https://foundations.projectpythia.org/foundations/getting-started-jupyter.html)
to learn more about the components of project Jupyter.

Specifically for the event, we will be using EIS-Sealevel [Open Science Studio (OSS)](https://smce.nasa.gov/oss/). Please follow [these steps](https://ecco-hackweek.github.io/ecco-2024/preliminary/oss_intro.html) to log in to your OSS system JupyterHub.


### GitHub authentication on OSS

To interact between online GitHub repositories and your OSS, you will need to set up an access token or key with GitHub. Follow [these steps](https://ecco-hackweek.github.io/ecco-2024/preliminary/git_access.html) to set this up and test it.


### EarthData account and OSS setup

We'll have you download some data from NASA Earthdata for your tutorials and projects. You can register for an account [here](https://urs.earthdata.nasa.gov). Then follow [these steps](https://ecco-hackweek.github.io/ecco-2024/preliminary/Earthdata_credentials.html) to store your credentials on the OSS system.


### P-Cluster login and .bashrc update

[AWS ParallelCluster](https://docs.aws.amazon.com/parallelcluster/latest/ug/what-is-aws-parallelcluster.html) (referred to as P-Cluster) is an open-source cluster management tool developed by Amazon Web Services (AWS). P-Cluster provides users with an HPC-like environment to conduct parallel computing. For the ECCO Hackathon, we have a P-Cluster ready for users to explore MITgcm, reproduce ECCO runs, and engage in many other activities. We have created an introductory [P-Cluster tutorial](pcluster-login.ipynb). Please go through the tutorial and ensure that: 1) you can log in to the P-Cluster, and 2) you have updated your .basrhc in your home directory..


### Set up Julia on the P-Cluster

Follow [these steps](https://ecco-hackweek.github.io/ecco-2024/tutorials/Julia_setup/guidelines.html) to set up the environment for the Julia tutorials on the P-Cluster.