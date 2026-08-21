FROM node:24-alpine

WORKDIR /usr/src/app

COPY package.json package-lock.json ./
RUN npm ci
COPY ./index.js ./
COPY ./views ./views

CMD ["npm","start"]