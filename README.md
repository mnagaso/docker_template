![Logo](./Logo_mm.png)

# docker_template
Template for packaging your research environment with Docker.  

0. if Docker is not installed yet on your computer, it can be downloaded from https://www.docker.com/  (free sign up is required.)  
1. if git command is not installed yet, its installer is available here https://git-scm.com/downloads  
1. download this repository or git clone by `git clone https://github.com/mnagaso/docker_template` on your terminal or powershell.  
2. go into the directory `cd ~/where/this/directory/docker_template`  
3. verify if docker daemon is running.  
4. `docker-compose up -d` to build the docker container.  
5. `docker-compose ps` shows the name and states of the docker container which is built in the former step like:  
```
              Name                   Command    State   Ports
-------------------------------------------------------------
docker_template_yourcontainername_1   /bin/bash   Up
```
5. Connect to the docker environment with `docker attach (container name)`. Generally it is `docker attach docker_template_yourcontaintername_1` or `docker attach docker_template_yourcontainername_1`.   
  Only the files put in /workspace will be shared with the host environment.  
  When you erase the docker container, only the files in this /workspace will be kept and others will be lost.  
6. to leave this container, `ctrl + p + q`  
7. for re-attaching to this container, redo step 4.

The modifications done in the container will be reflected automatically on the local environment.  

This script does not support docker toolbox (docker system working with virtual box).