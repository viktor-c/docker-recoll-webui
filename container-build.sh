#!/bin/bash
docker build --label docker-recoll-webui --tag docker-recoll-webui https://github.com/viktor-c/docker-recoll-webui.git

#The passed parameter to this script should be the TOP path to your local collection of data. 
#This will pe passed on to docker, and the volume will be connected to the local mount-point
docker run -d --mount src=$1,target=/data,type=bind docker-recoll-webui
