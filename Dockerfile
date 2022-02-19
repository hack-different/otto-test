FROM ubuntu:latest

RUN apt update && apt upgrade -y

RUN apt install curl -y

RUN mkdir /srv/actions-runner && cd /srv/actions-runner

RUN curl -o actions-runner-linux-x64-2.287.1.tar.gz -L https://github.com/actions/runner/releases/download/v2.287.1/actions-runner-linux-x64-2.287.1.tar.gz

RUN tar xzf ./actions-runner-linux-x64-2.287.1.tar.gz

CMD ./config.sh --url https://github.com/hack-different --token $TOKEN && ./run.sh