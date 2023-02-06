FROM nodejs

WORKDIR /app
COPY . .

RUN npm install
RUN npm run test
EXPOSE 8000

CMD []
ENTRYPOINT ["/nodejs/bin/npm", "start"]
