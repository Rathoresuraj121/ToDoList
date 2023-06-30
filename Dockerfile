#stage 1
FROM node:latest
WORKDIR /usr/src/app
COPY . .
RUN npm install
RUN npm run build

#stage 2
FROM nginx:latest
COPY /dist/to-do-list /usr/share/nginx/html

#80


