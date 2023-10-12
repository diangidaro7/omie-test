FROM ubuntu:latest

WORKDIR /app

RUN apt update

RUN apt -y install python3 python3-pip

RUN apt -y install curl
RUN curl -sL https://deb.nodesource.com/setup_18.x | bash
RUN apt -y install nodejs
RUN node -v

RUN npm install -g serverless
RUN npm install -g serverless-offline

COPY . .
RUN npm install

EXPOSE 3000

CMD [ "sls", "offline", "--host", "0.0.0.0" ]