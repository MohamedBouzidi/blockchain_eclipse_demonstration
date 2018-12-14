FROM alpine:latest

RUN mkdir /geth_monitor/
WORKDIR /geth_monitor/

RUN apk update && apk add nodejs
RUN apk add git

RUN git clone https://github.com/cubedro/eth-netstats
RUN cd eth-netstats && npm install
RUN npm install -g grunt-cli
RUN cd eth-netstats && grunt
RUN cd /geth_monitor && echo "cd eth-netstats &&  WS_SECRET=secret npm start" > start.sh && chmod u+x start.sh 


ENTRYPOINT sh
