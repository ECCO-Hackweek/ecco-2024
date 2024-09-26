# Getting Started with the P-Cluster 
The P-Cluster is very much like a high-performance computing (HPC) system where you can run interactive jobs and/or perform parallel computing.
## Connecting to the P-Cluster
### Generating and Submitting Your SSH Key

Before you can connect to the P-Cluster, please send your public SSH key to helper@abcdefg.com (placeholder) so you can be added to the authorized user list. You can generate a public/private key pair on your local machine using a tool like ssh-keygen:

ssh-keygen -t rsa -b 4096 -C KEY_LABEL

After running the command, ssh-keygen will prompt you with a series of questions, including where to save the key and whether to use a passphrase. It will suggest saving the key in ~/.ssh/id_rsa, but you can specify a different location. You will also be prompted to enter a passphrase, which adds an extra layer of security (you will need to enter it each time you use the key). If you prefer not to use a passphrase, simply press Enter twice.

### Connecting to the P-Cluster via SSH
From your local Linux or Mac terminal, connect to the P-Cluster using its IP address (e.g., 123.45.67.89):

ssh -X 123.45.67.89  

Note: The IP address 123.45.67.89 is a placeholder. Please replace it with the actual IP address of the P-Cluster. The -X option in the ssh -X command enables X11 forwarding, allowing you to run graphical applications on a remote machine and display them locally on your computer.

You will then be prompted to enter your passphrase:
Enter passphrase for key '/Users/USERNAME/.ssh/id_rsa':  

## P-Cluster Overview
### Directory Structure
Once you successfully log in, you will be in your home directory, /home/USERNAME/. Each user also has a directory at /efs/USERNAME/. The home directory is intended for storing analysis code, scripts, configurations, and user-specific settings, while the /efs/USERNAME/ directory is better suited for conducting model runs.

### Shell Environment 
By default, the P-Cluster uses Bash as the shell environment. Each user has a .bashrc file in their home directory, which is automatically executed whenever a new Bash session starts. This file can be customized to set environment variables, create aliases, and configure other shell settings. Here is an [example .bashrc](./example.bashrc) that sets the default Bash environment on the P-Cluster. This [example .bashrc](./example.bashrc) can serve as a starting point for further customization (download it, place it in your home directory, and rename it to .bashrc).

If preferred, users can switch to other shells such as Csh, Ksh, and Zsh. 

### Spack
The P-Cluster uses Spack (https://spack.io), an open-source package manager, to manage modules and libraries. The [example .bashrc](./example.bashrc) initializes Spack profile. One can use Spack to install software and generate new modules even as a non-root users, although the collection of modules on the P-Cluster is already extensive.  

### The `module` Command

The `module` command is used on the P-Cluster to manage environment modules. Modules allow users to easily load, unload, and switch between different software environments without manually modifying environment variables like `PATH` and `LD_LIBRARY_PATH` manually. This command is especially useful for managing multiple versions of software or libraries in shared environments.

When you load a module, it configures your environment to use a specific version of software. You can list available modules, load and unload modules, and reset your environment using various `module` subcommands.

Below is a list of common `module` commands and their functions:

| Command             | Description                                                                            | Example                    |
|---------------------|----------------------------------------------------------------------------------------|----------------------------|
| `module avail`      | Lists all available modules that can be loaded.                                         | `module avail`             |
| `module list`       | Shows a list of currently loaded modules in your environment.                           | `module list`              |
| `module load`       | Loads a specific module into your environment, making the software available for use.   | `module load gcc/9.3.0`    |
| `module unload`     | Unloads a specific module, removing it from your environment.                           | `module unload gcc/9.3.0`  |
| `module purge`      | Unloads all currently loaded modules, resetting your environment.                       | `module purge`             |

### Batch System
The P-Cluster uses Slurm (https://slurm.schedmd.com) as the batch system for submitting jobs for MPI runs. Some commonly used commands are listed below.

| Command   | Description                                                                 | Example                                |
|-----------|-----------------------------------------------------------------------------|----------------------------------------|
| `sbatch`  | Submits a job script to the Slurm scheduler.                                | `sbatch job_script.sh`                 |
| `srun`    | Submits a job or launches parallel tasks (can be used in a script or interactively). | `srun --ntasks=4 ./my_program`|
| `scancel` | Cancels a pending or running job.                                           | `scancel <job_id>`                     |
| `squeue`  | Displays information about jobs in the queue.                              | `squeue`                                |
| `sinfo`   | Displays information about available Slurm nodes and partitions.            | `sinfo`                                |