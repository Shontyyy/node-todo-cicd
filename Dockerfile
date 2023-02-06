FROM alpine
RUN apk update && apk upgrade
RUN apk add nodejs
RUN mkdir -p /app
ADD app/package.json /app
WORKDIR /app/
ENV HOME /app
ENV NODE_ENV development
RUN npm install
ADD app /app    
EXPOSE 8000
CMD npm start
