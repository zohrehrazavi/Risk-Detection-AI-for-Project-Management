# Use a lightweight Nginx image
FROM nginx:alpine

# Copy the HTML files to the Nginx web root
COPY html/ /usr/share/nginx/html/
COPY assets/ /usr/share/nginx/html/assets/

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"] 