FROM node:8.16.1-alpine as base
WORKDIR /app
COPY package.json .
RUN npm i

FROM base as test
WORKDIR /app
COPY src /app/src
ENV CI=true
RUN npm test

FROM base as build
WORKDIR /app
COPY src /app/src
COPY public /app/public
COPY scripts /app/scripts
COPY workbox-config.js /app/workbox-config.js
RUN npm run build

FROM nginx:1.17 as prod
COPY --from=build /app/build usr/share/nginx/html
