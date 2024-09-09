# eScience Hackweek Jupyterbook Template GitHub Actions

This folder contains continuous integration workflows to perform a variety of tasks such as checking for spelling errors and broken links, ensuring HTML is generated without errors, and publishing the website.

## Actions

the `actions/` subfolder contains common [composite actions steps](https://docs.github.com/en/actions/creating-actions/creating-a-composite-action) that any workflow can use.

#### [setupconda](./setupconda/action.yaml)
Steps to configure conda environment required to build the website.

#### [buildresources](./buildresources/action.yaml)
Steps to build the hackweek landing webpage and JupyterBook.


## Workflows

The `workflows/` subfolder contains continuous integration workflows

#### [binder-badge.yaml](../workflows/binder-badge.yaml)
Create [binder](https://mybinder.readthedocs.io/en/latest/howto/gh-actions-badges.html) badges with links to test tutorial notebooks

#### [build-website.yaml](../workflows/build-website.yaml)
Build the websites (JupyterBook and front page). Run on Pull Requests against every commit and via a 'cron' schedule to maintain caching [since otherwise the cache expires if untouched in 7 days](https://docs.github.com/en/actions/advanced-guides/caching-dependencies-to-speed-up-workflows#usage-limits-and-eviction-policy)

#### [deploy.yaml](../workflows/deploy.yaml)
Render and publish the websites (JupyterBook and landing page) to GitHub Pages

#### [manual.yaml](../workflows/manual.yaml)
Bypass usage of the cache to manually trigger a full rebuild of the JupyterBook and landing page

#### [netlifypreview.yaml](../workflows/netlifypreview.yaml)
Creates public preview, via [netlify](https://jupyterbook.org/publish/netlify.html), of changes by building from a PR

#### [qaqc.yaml](../workflows/qaqc.yaml)
Quality assessment and quality control. Standardizes formatting including spell check, hyperlink check, and clearing notebook outputs

#### [repo2docker.yaml](../workflows/repo2docker.yaml)
[Build a Docker image](https://github.com/jupyterhub/repo2docker-action) for JupyterHub/BinderHub

#### [template-sync.yaml](../workflows/template-sync.yaml)
Open a PR to update the templated repo to incorporate changes made to the
[template repo](https://github.com/uwhackweek/jupyterbook-template).
Template users should fill out the [.templatesyncignore](../../../.templatesyncignore)
to specify which files they do not want updated from the template.
Note that if you want the GitHub action and workflow files to be updated,
you will need to [create a personal access token(PAT)](https://github.com/AndreasAugustin/actions-template-sync?tab=readme-ov-file#troubleshooting).
Alternatively, you must add ".github/**" to your `.templatesyncignore` file, and your actions will not be updated.


## Security

It's desirable for hackweek websites to have contributions from anyone, so the website repository should allow for changes via pull requests from forks. By default workflows running off forked repositories do not have access to secrets, but [following security best practices](https://securitylab.github.com/research/github-actions-preventing-pwn-requests/) you can require adding a label to a pull request in order to run a workflow that requires secrets. For an example, see the [netlifypreview.yaml](./actions/workflows/netlifypreview.yaml) workflow.
