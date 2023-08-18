FROM ubuntu:22.04

ENV TZ=Europe/Vienna
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt update 

# Build Toolchain
RUN apt install -y build-essential cmake extra-cmake-modules 

# OpenGL
RUN apt install -y mesa-common-dev 

# KF5
RUN apt install -y libkf5purpose-dev libkf5doctools-dev libkf5pty-dev libkf5kexiv2-dev libkf5khtml-dev libkf5activities-dev libkf5parts-dev libkf5crash-dev libkf5textwidgets-dev libkf5configwidgets-dev libkf5windowsystem-dev libkf5bookmarks-dev libkf5completion-dev libkf5kio-dev libkf5threadweaver-dev libkf5archive-dev

# Dependencies
RUN apt install -y libqt5svg5-dev libqt5x11extras5-dev zlib1g-dev libjpeg-dev pkg-config libchm-dev libtiff-dev libepub-dev libfreetype-dev libzip-dev libphonon4qt5-dev libpoppler-dev libpoppler-qt5-dev libqt5texttospeech5-dev

WORKDIR /okular

CMD ["/bin/sleep", "infinity"]
