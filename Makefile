# This file is only useful if you test command in the same directory as where you are running project code and storing project data. Otherwise use the data-lab-commands.sh file
build:
	podman build -t data-python .
up:
	podman play kube pgdata-pvc.yaml
	podman play kube data-lab.yaml

down:
	podman pod rm -f data-lab

restart: down up

shell:
	podman exec -it data-lab-python bash

logs:
	podman logs data-lab-python

ps:
	podman ps --pod
