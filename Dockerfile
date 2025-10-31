# Use nginx to serve a simple static HTML site
FROM nginx:alpine

# Remove default nginx content and copy site into the default web root
RUN rm -rf /usr/share/nginx/html/*
COPY . /usr/share/nginx/html

# Default command (inherited from nginx:alpine, kept for clarity)
CMD ["nginx", "-g", "daemon off;"]
