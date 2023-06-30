#stage 1
FROM node:latest as build
WORKDIR /usr/src/app
COPY . .
RUN npm install
RUN npm run build

#stage 2
FROM nginx:latest
COPY --from=build /usr/src/app/dist/to-do-list /usr/share/nginx/html

#80


