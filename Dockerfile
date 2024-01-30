# Use Alpine Linux as the base image
FROM alpine:latest

# Install Nginx
RUN apk --no-cache add nginx

# Copy index.html into the Nginx document root
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 to the outside world
EXPOSE 80

# Command to start Nginx when the container is launched
CMD ["nginx", "-g", "daemon off;"]
