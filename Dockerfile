FROM ubuntu:16.04

RUN apt-get -qq update && \
    apt-get -qq -y install \
    pip && \
    rm -rf /var/lib/apt/lists/*

RUN pip install dropbox

COPY bin/* /bin/

CMD ["/bin/bash"]
