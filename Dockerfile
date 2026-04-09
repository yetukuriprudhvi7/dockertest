arg : version
FROM node:${version:-20}
workdir /app
copy package.json .
copy server.js .
run npm install 
cmd ["node","server.js"]
