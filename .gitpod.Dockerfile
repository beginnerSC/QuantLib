FROM gitpod/workspace-full

# Install Boost
RUN sudo apt-get update \
    && sudo apt-get install -y libboost-all-dev automake autoconf libtool \
    && ./autogen.sh \
    && ./configure --with-boost-include=/usr/include/boost \
    && make \
    && sudo make install \
    && sudo ldconfig \
    && cd Examples/EquityOption/ \
    && g++ -g EquityOption.cpp -o EquityOption -L../../ql/.libs/libQuantLib.so -lQuantLib \
    && ./EquityOption
