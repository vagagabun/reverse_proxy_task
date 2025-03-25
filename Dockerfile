FROM nginx:latest

# Copy the reverse proxy configuration file into the container
COPY reverse_proxy.conf /etc/nginx/conf.d/reverse-proxy.conf

# Expose port 8080 for external access
EXPOSE 8080

# Start Nginx in the foreground to keep the container running
CMD ["nginx", "-g", "daemon off;"]
