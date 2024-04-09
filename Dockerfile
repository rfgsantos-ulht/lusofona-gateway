FROM nginx:latest

# This is the dir for NGINX to have locations for each server
VOLUME /etc/nginx/locations
# This is the media for NGINX to serve static and uploaded
VOLUME /etc/nginx/multimedia

COPY dev.conf /etc/nginx/conf.d/default.conf
COPY ./nginx.conf /etc/nginx/nginx.conf