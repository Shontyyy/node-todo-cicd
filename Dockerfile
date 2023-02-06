FROM readytalk/nodejs

WORKDIR /app
ADD . /app

RUN npm i

EXPOSE 8000

CMD []
ENTRYPOINT ["/nodejs/bin/npm", "start"]
