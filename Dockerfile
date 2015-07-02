FROM dockerfile/nodejs

RUN sudo apt-get -y update
RUN sudo apt-get -y install redis-tools

RUN mkdir -p /var/app
WORKDIR /var/app

COPY ./package.json /var/app/

ENV VIRTUAL_HOST magicword.info
ENV VIRTUAL_PORT 8080
EXPOSE 8080

RUN npm install

COPY ./ /var/app/

CMD [ "npm", "run", "start" ]
