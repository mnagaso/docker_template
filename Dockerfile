# at first, specify a base docker image.
# there are many ready to use docker images here: https://hub.docker.com/
FROM debian:jessie-slim

# one can put the label of maintainer of this dockerfile.
LABEL maintainer="Masaru Nagaso <mnsaru22@gmail.com>"

RUN apt-get update
RUN apt-get clean

# example for installation with apt-get
RUN apt-get install -y \
    build-essential \
    python3-dev \
    python3-pip \
    vim \
    git

# example of how to clone codes on github and compile it.
#RUN git clone --branch devel https://github.com/geodynamics/specfem2d
#WORKDIR /specfem2d
#RUN ./configure FC=gfortran CC=gcc MPIFC=mpif90 --with-mpi
#RUN make

# example how to use pip
RUN pip3 install \
  numpy 
