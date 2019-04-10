FROM debian:stretch
LABEL maintainer="Andrew Ho <andrewho@nhs.net>"

RUN apt-get update && apt-get -y install \
    python3 \
    python3-pip \
    curl
RUN pip3 install tensorflow nibabel numpy
RUN update-alternatives --install /usr/bin/python python /usr/bin/python3 1

WORKDIR /
RUN curl -L https://github.com/Kamnitsask/deepmedic/archive/v0.7.3.tar.gz | \
    tar xz

WORKDIR /deepmedic-0.7.3
CMD ["bash"]
