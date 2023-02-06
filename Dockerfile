FROM node:latest
WORKDIR app
COPY . .
RUN npm install
CMD npm start
RUN npm run test
EXPOSE 8888
CMD ["node","app.js"]
