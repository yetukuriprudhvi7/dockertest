FROM node:20
workdir /app
copy package.js .
copy server.js .
run npm install 
cmd ["node","server.js"]
