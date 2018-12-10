FROM node:alpine

WORKDIR app

RUN apk add -u tzdata

ADD package.json package-lock.json ./

RUN npm install

ADD . ./

EXPOSE 5000

CMD npm start
