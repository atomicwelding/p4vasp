FROM python:2.7-buster

ENV python2=/usr/bin/python

RUN apt update && apt install python-gtk2-dev libfltk1.3-dev sudo python-dev g++ libx11-dev mesa-common-dev libglu1-mesa-dev python-opengl python-numpy python-glade2 -y && rm -rf /var/cache/apt/archives /var/lib/apt/lists/*.

RUN git clone https://github.com/atomicwelding/p4vasp

WORKDIR /p4vasp
COPY fltk-config.py /p4vasp/src/fltk-config.py
COPY Makefile /p4vasp/Makefile

RUN make config && make install && make bashrc && rm -r *

USER 1000

ENTRYPOINT ["p4v"]