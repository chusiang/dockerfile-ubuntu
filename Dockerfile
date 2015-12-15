#
# Ubuntu Dockerfile
#
# https://github.com/chusiang/dockerfile-ubuntu
#

# Pull base image.
FROM ubuntu:14.04

# Install.
RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  sed -i 's/archive.ubuntu.com/free.nchc.org.tw/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y aptitude autojump && \
  apt-get install -y bash-completion build-essential && \
  apt-get install -y curl && \
  apt-get install -y exuberant-ctags && \
  apt-get install -y git && \
  apt-get install -y htop && \
  apt-get install -y less && \
  apt-get install -y make man mosh mysql-client && \
  apt-get install -y software-properties-common && \
  apt-get install -y tmux && \
  apt-get install -y unzip && \
  apt-get install -y vim && \
  apt-get install -y w3m wget && \
  rm -rf /var/lib/apt/lists/* && \
  update-alternatives --set editor /usr/bin/vim.basic

# Add files.
ADD root/.bashrc /root/.bashrc
ADD root/.bash_aliases /root/.bash_aliases
ADD root/.bash_export /root/.bash_export
ADD root/.bash_profile /root/.bash_profile
ADD root/.gitconfig /root/.gitconfig
ADD root/.tmux.conf /root/.tmux.conf
ADD root/.scripts /root/.scripts

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

# Define default command.
CMD ["bash"]
