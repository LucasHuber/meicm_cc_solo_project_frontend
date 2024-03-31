FROM node:latest

WORKDIR /usr/app

COPY package.json .
RUN npm install

COPY index.html .
COPY index.js .

ENTRYPOINT [ "node" , "index.js"]