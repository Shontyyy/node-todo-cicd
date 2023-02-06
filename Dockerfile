FROM alpine
RUN apk update && apk upgrade
RUN npm install
RUN mkdir -p /app
ADD . .
WORKDIR /app/
ENV HOME /app
ENV NODE_ENV development
RUN npm install  
EXPOSE 8000
CMD npm start
