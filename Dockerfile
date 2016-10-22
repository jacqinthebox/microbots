FROM ubuntu:latest
MAINTAINER Jacqueline <jacqueline@moonstreet.nl>

# chefdk
RUN apt-get update
RUN apt-get install curl git wget vim tig ssh-client -y
RUN curl https://omnitruck.chef.io/install.sh | bash -s -- -c current -P chefdk

# cleanup
RUN apt-get clean

# we are using vim
RUN mkdir -p /root/.vim/autoload ~/.vim/bundle && curl -LSso /root/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
RUN git clone https://github.com/scrooloose/nerdtree.git /root/.vim/bundle/nerdtree
ADD vimrc /root/.vimrc
RUN echo 'export EDITOR=$(which vim)'  >> ~/.bashrc

VOLUME ["/data"]
CMD ["bash"]
