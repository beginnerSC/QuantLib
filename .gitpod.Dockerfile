FROM gitpod/workspace-full

RUN sudo apt-get update \
    && sudo apt-get install -y libboost-all-dev automake autoconf libtool