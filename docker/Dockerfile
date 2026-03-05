# Use lightweight Nginx alpine image
FROM nginx:stable-alpine

# Set working directory to Nginx html folder
WORKDIR /usr/share/nginx/html

# Project: Cloud-Ready Dockerized Application
# Author: Sachin C S

# Remove default nginx static assets
RUN rm -rf ./*

# Copy our application files
COPY ./app/ .

# Expose port 80
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
