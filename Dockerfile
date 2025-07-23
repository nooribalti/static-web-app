# Use Nginx as base image
FROM nginx:alpine

# Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy your static files to Nginx web root
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80
