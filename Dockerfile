FROM ubuntu

RUN apt-get update
RUN apt-get install -y openssh-client git
RUN mkdir -p -m 0600 ~/.ssh && ssh-keyscan github.com >> ~/.ssh/known_hosts

RUN --mount=type=ssh git clone git@github.com:nilandasd/test.git

CMD ["echo", "hello world"]
