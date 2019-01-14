FROM ubuntu
LABEL maintainer="Masaru Nagaso <mnsaru22@gmail.com>"

# Replace shell with bash so we can source files
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

# Update the apt-get and installs curl
RUN apt-get update \
  && apt-get install -y curl \
    gnupg2

# Update node version on apt-get
RUN curl -sL https://deb.nodesource.com/setup_9.x | bash -

# Installs node.js, python, pip and setup tools
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y --fix-missing \
    python3 \
    python3-pip \
    python3-setuptools \
    nodejs \
    build-essential \
    libzmq3-dev \
    build-essential \
    checkinstall \
    vim \
    git \
    zlib1g-dev \
    wget 


# Setup python language
ENV LANG en_US.UTF-8
ENV LC_CTYPE en_US.UTF-8

# Upgrade npm
RUN npm install npm@latest -g


RUN pip3 install \
  scipy \
  pandas \
  matplotlib \
  jupyter jupyterlab \
  cmake 

# Fix ipython kernel version
RUN ipython3 kernel install

# Install nodejs kernel
RUN npm config set user 0 \
 && npm config set unsafe-perm true \
 && npm install ijavascript -g

RUN ijsinstall --hide-undefined --install=global

## vim option
#RUN jupyter labextension install jupyterlab_vim
#RUN pip3 install jupyter_contrib_nbextensions \
#  && jupyter contrib nbextension install --user \
#  && mkdir -p $(jupyter --data-dir)/nbextensions \
#  && cd $(jupyter --data-dir)/nbextensions \
#  && git clone https://github.com/lambdalisue/jupyter-vim-binding vim_binding \
#  && jupyter nbextension enable vim_binding/vim_binding 

# ipywidget
RUN pip3 install ipywidgets \
  && jupyter nbextension enable --py widgetsnbextension \
  && jupyter labextension install @jupyter-widgets/jupyterlab-manager


# Install Python Packages & Requirements (Done near end to avoid invalidating cache)
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt