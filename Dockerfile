FROM node:14.7.0-alpine

WORKDIR /home/node/app

COPY . .

RUN mkdir -p /home/node/app/node_modules && \
    npm install && chown -R node:node /home/node/app

USER node

CMD [ "node", "app.js" ]