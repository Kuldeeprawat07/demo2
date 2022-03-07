# Stage 1
FROM node:14.19.0-alpine as build
RUN mkdir -p /app
WORKDIR /app
COPY package.json /app/
#RUN npm install
COPY . .
#RUN npm run build --prod
#bdfsbfjsbjkbfjksbj
#jjnfw

# Stage 2
# nginx state for serving content
FROM nginx:alpine
WORKDIR /usr/share/nginx/html/
RUN rm -rf ./*
