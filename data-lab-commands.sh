#!/usr/bin/env bash

PROJECT=$(pwd)

case "$1" in
  up)
    podman build -t data-python .
    podman play kube pgdata-pvc.yml
    podman play kube data-lab.yml
    ;;
  shell)
    podman exec -it data-lab-python bash
    ;;
  down)
    podman pod rm -f data-lab
    ;;
esac
