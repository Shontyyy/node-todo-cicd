FROM node

WORKDIR /app
COPY . .

RUN npm install
RUN npm run test
EXPOSE 8000

CMD []
ENTRYPOINT ["node","app.js"]
