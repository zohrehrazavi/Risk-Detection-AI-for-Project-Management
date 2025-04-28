# Use a lightweight Nginx image
FROM nginx:alpine

# Copy all files directly to Nginx root
COPY html/index.html /usr/share/nginx/html/
COPY html/ai-model.html /usr/share/nginx/html/
COPY assets/ /usr/share/nginx/html/assets/

# Copy nginx configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"] 