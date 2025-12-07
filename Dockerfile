FROM node:22-alpine

COPY . ./

EXPOSE 3000

RUN npm install -g npm@11.6.4
RUN npm install express
RUN node server.js