FROM fedora:30

RUN dnf -y install cmake wget git flex bison libudev-devel
RUN dnf -y install make gcc gcc-c++ kernel-devel ncurses-devel

RUN dnf -y install openssl-devel zlib-devel libjpeg-devel libpng-devel bzip2 libgit2-devel boost-devel
RUN dnf -y install xorg-x11-server-Xvfb qt-creator qt5-devel

RUN ln -s /usr/bin/qmake-qt5 /usr/bin/qmake
RUN ln -s /usr/bin/lrelease-qt5 /usr/bin/lrelease

RUN dnf clean all

RUN groupadd -g 1000 conan1 && \
    groupadd -g 1001 conan2 && \
    groupadd -g 2000 travis && \
    useradd -m -r -u 1000 -g conan1 -g conan2 -g travis conan && \
    echo "conan ALL=(root) NOPASSWD:ALL" > /etc/sudoers.d/conan && \
    chmod 0440 /etc/sudoers.d/conan

WORKDIR /home/conan
USER conan
