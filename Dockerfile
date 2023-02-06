FROM node:latest
WORKDIR app
COPY . .
RUN npm install
RUN npm run test
EXPOSE 8888
CMD ["node","app.js"]
