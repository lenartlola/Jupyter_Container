FROM debian

LABEL maintainer="lenart"

RUN apt update -y

RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata

RUN apt install -y sudo

RUN useradd -ms /bin/bash juser

RUN echo "juser ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER juser

WORKDIR /home/juser/jupyter/work


RUN sudo apt install -y jupyter-notebook python3 python3-pip python3-venv

RUN python3 -m venv ./venv

RUN sudo /usr/bin/bash -c "source ./venv/bin/activate && \
    pip install ipykernel && \
    python -m ipykernel install --name=venv"

#RUN source ./venv/bin/activate
#
#RUN pip install --user ipykernel
#
#RUN python -m ipykernel install --user --name=venv

EXPOSE 8888

ENTRYPOINT ["jupyter", "notebook", "--allow-root", "--ip=0.0.0.0"]

