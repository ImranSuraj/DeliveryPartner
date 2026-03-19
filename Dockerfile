# Use Nginx
FROM nginx:alpine

# Remove default files
RUN rm -rf /usr/share/nginx/html/*

# Copy your entire project
COPY . /usr/share/nginx/html

# Expose port
EXPOSE 80

# Start server
CMD ["nginx", "-g", "daemon off;"]