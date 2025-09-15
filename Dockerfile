FROM registry.access.redhat.com/ubi9/nginx-120:9.6

# put html page on a specific folder
COPY ./index.html /opt/app-root/src/store/index.html

# Expose the port the nginx server runs on
EXPOSE 8080

# Redirect logs so Docker captures them
RUN ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log

CMD ["nginx", "-g", "daemon off;"]