FROM nginx:1.15.8-alpine

LABEL maintainer="Ronald based on docker repo"

ENV NGINX_VERSION 1.15.8

COPY nginx.conf /etc/nginx/nginx.conf
COPY nginx.vh.default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]
