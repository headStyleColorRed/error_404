FROM nginx:1.17-alpine

# Copy nginx configuration to container
COPY nginx.conf /etc/nginx/

# Copy website to container
COPY dist /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]