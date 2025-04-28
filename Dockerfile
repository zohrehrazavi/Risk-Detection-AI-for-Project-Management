# Use a lightweight Nginx image
FROM nginx:alpine

# Create necessary directories
RUN mkdir -p /usr/share/nginx/html/html

# Copy the HTML files to the correct location
COPY html/ /usr/share/nginx/html/html/

# Copy assets to the correct location
COPY assets/ /usr/share/nginx/html/assets/

# Copy nginx configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"] 