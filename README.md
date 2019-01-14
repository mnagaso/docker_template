![Logo](./logo.png)

# docker_template
Template for packaging your research environment with Docker.  

0. if Docker is not installed yet on your computer, it can be downloaded from https://www.docker.com/  (free sign up is required.)  
1. if git command is not installed yet, its installer is available here https://git-scm.com/downloads  
1. download this repository or git clone by `git clone --branch jupyer_env https://github.com/mnagaso/docker_template` on your terminal or powershell.  
2. go into the directory `cd ~/where/this/directory/docker_template`  
3. verify if docker daemon is running.  
4. `docker-compose up` to build the docker container.  
5. accessing 127.0.0.1:8888 on your web browser will show jupyterlab interface.  
6. to stop the container,  Ctrl+d twice in the terminal.  

The modifications done in the container will be reflected automatically on the local environment.  
For installing additional python module, add its name in `./jupyterlab/requirements.txt`.  

This script does not support docker toolbox (docker system working with virtual box).