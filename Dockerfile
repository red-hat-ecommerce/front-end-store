FROM registry.access.redhat.com/ubi9/nginx-120:9.6

# put html page on a specific folder
COPY ./index.html /opt/app-root/src/index.html

COPY nginx/nginx.conf "${NGINX_CONF_PATH}"

# Expose the port the nginx server runs on
EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]