# Use nginx base image
FROM nginx:alpine

# Copy HTML files into Nginx web root
COPY . /usr/share/nginx/html

EXPOSE 80
