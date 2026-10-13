# Multi-stage / lightweight alpine image
FROM nginx:alpine

# Metadata labels
LABEL maintainer="ptitvn"
LABEL description="DevOps Session 12 Bài 2 - Automated Release Image on Git Tag"

# Copy web content
COPY index.html /usr/share/nginx/html/index.html

# Expose HTTP port
EXPOSE 80

# Default command
CMD ["nginx", "-g", "daemon off;"]
