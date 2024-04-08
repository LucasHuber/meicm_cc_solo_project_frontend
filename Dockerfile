FROM node:latest

WORKDIR /usr/app

COPY package.json .
RUN npm install

COPY index.html .
COPY index.js .

# COPY setup.py .
# CMD [ "python" , "setup.py" ]

# CMD [ "sed" , "-i" , "s/<SOCKET_URI_PLACEHOLDER>/$SOCKET_URI/g" , "index.html"]

ENTRYPOINT [ "node" , "index.js"]