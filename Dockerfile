FROM ubuntu

RUN apt-get update
RUN apt-get install -y git

RUN git clone git@github.com:nilandasd/test.git

CMD ["echo", "hello world"]
