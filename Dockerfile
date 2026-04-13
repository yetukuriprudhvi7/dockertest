ARG : version
FROM node:${version:-20}
WORKDIR /app
COPY package.json .
COPY server.js .
RUN npm install 
CMD ["node","server.js"]
