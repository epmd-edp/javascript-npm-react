FROM node:10-alpine

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app
WORKDIR /home/node/app

COPY src/* ./
COPY package*.json ./
COPY . .
RUN chown -R node:node .
USER node
EXPOSE 8080
CMD [ "node", "app.js" ]
