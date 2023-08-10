# Jupyter inside docker container

This is a lightweight docker container for those who wish to work with
Jupyter Notebook.


## Setup and Usage

Before proceeding, ensure that you have Docker installed and running 
properly on your system.

To build the Docker image and start the Jupyter Notebook container, 
run the following command:

```bash
make
```

This command will create a Jupyter Notebook running at `http://127.0.0.1:8888/tree`.
It also sets up a mount point between the host and the container, 
allowing modifications from both the container and the host.


## TODO

Please note that the "stop" and "clean" commands have not been implemented yet. 
Use the `make prune` command only if you fully understand its implications.

> Lenart
