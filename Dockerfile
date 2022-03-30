FROM ubuntu:18.04

RUN apt-get update && apt-get upgrade -y && apt-get install -y git curl

RUN curl -fsSL https://deb.nodesource.com/setup_14.x | bash - && apt-get install -y nodejs

RUN  mkdir /testangular && cd /testangular && git clone https://github.com/AmeyaSawant16/testDockerAngular.git



RUN npm install -g @angular/cli && \
    cd /testangular/testDockerAngular && \
    npm i