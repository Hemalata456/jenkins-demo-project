# Using nginx base image
FROM nginx:alpine

COPY . /usr/share/nginx/html

EXPOSE 8080
