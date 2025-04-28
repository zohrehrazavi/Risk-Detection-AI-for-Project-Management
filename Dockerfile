# Use a lightweight Nginx image
FROM nginx:alpine

WORKDIR /usr/share/nginx/html

# Copy the HTML files and assets
COPY html/ html/
COPY assets/ assets/

# Copy nginx configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"] 