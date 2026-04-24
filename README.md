# What is this repo for
This repo contains a pod with two containers: one for python and one for postgres.
It allows you to build an image containing some basic Python packages for data transformations.
It also allows you to transforma data with SQL through the postgres container.

Commands are made easier through a sh file that summarizes the steps with data-lab up and data-lab down commands.
Mounting is done in the current working directory, know that before running data-lab up

# How to use podman in general
https://docs.podman.io/en/latest/Introduction.html


# How to use this repo
## Create image from this project
podman build -t data-python .

## Init
podman play kube pgdata-pvc.yaml
podman play kube data-lab.yaml

## Jump into Python container
podman exec -it data-lab-python bash

# How to manage podman files
## Check running containers under pods 
pordman ps --pod

## Stop the whole thing
podman pod stop data-lab

## Start it up again
podman pod start data-lab

## Destroy/wipe all containers/pods/volumes
podman pod rm -f data-lab
podman volume rm pgdata

## Apply changes and redeploy
podman pod rm -f data-lab
podman play kube data-lab.yaml

## Inspect pod
podman pod inspect data-lab

## Get logs
podman logs <container>

## run with debugger
podman play kube data-lab.yaml --log-level=debug

