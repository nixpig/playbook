FROM archlinux:base-20230910.0.177821
ARG USERNAME

RUN pacman -Syu --noconfirm curl git wget ansible sudo

RUN useradd -m $USERNAME
RUN usermod -aG wheel $USERNAME
RUN echo "%wheel ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

USER ${USERNAME}
WORKDIR /home/$USERNAME

ENV HOME /home/$USERNAME
ENV USER $USERNAME

COPY . .

CMD ["sh", "-c", "'ansible-playbook local.yml'"]
