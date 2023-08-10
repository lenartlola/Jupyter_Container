FROM archlinux

LABEL maintainer="lenart"

WORKDIR /jupyter/work

RUN pacman -Syu --noconfirm

RUN pacman -S --noconfirm jupyter-notebook

EXPOSE 8888

ENTRYPOINT ["jupyter", "notebook", "--allow-root", "--ip=0.0.0.0"]

