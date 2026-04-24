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
