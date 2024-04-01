FROM node:alpine

WORKDIR /service

COPY package.json ./

RUN npm install -g ts-node nodemon
RUN npm install
RUN npm install typescript

COPY src ./src
COPY public ./public

CMD ["npm", "start"]
