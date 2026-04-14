ARG : version
FROM node:20.19.5-alpine3.22
WORKDIR /app
COPY package.json server.js .
RUN npm install 
CMD ["node","server.js"]
