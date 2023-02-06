FROM node:10-alpine

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install

COPY . .
RUN npm run test
EXPOSE 8000
CMD [ "npm", “run”, "start" ]
