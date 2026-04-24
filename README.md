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

