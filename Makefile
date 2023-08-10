current_dir = $(shell pwd)

all: docker

docker:
	docker build -t jupyter .
	docker run -it --name jupyter_notebook -p 8888:8888 -v $(current_dir):/jupyter/work jupyter

docker_start:
	docker start -i jupyter_notebook

docker_run:
	docker exec -it jupyter_notebook /bin/zsh

prune:
	docker system prune -a --volumes
