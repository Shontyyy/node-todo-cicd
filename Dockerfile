FROM node:latest
WORKDIR app
COPY . .
CMD npm start
RUN npm install
RUN npm run test
EXPOSE 8000
CMD ["node","app.js"]
