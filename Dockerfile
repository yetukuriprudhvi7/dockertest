arg version
FROM node:20.19.5-alpine3.22 AS BUILD
workdir /app
copy package.json .
copy server.js .
run npm install 

From node:20.19.5-alpine3.22
workdir /app1
copy --from-build /app /app1
cmd ["node", "server.js"]
