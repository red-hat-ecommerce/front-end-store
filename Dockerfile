FROM registry.access.redhat.com/ubi9/nginx-120:9.6

# Copy all frontend files to the appropriate directory
COPY ./css /opt/app-root/src/css
COPY ./img /opt/app-root/src/img
COPY ./js /opt/app-root/src/js
COPY ./index.html /opt/app-root/src/index.html

# Expose the port the nginx server runs on
EXPOSE 8080

# Redirect logs so Docker captures them
RUN ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log

CMD ["nginx", "-g", "daemon off;"]