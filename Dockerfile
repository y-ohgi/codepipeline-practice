FROM nginx:alpine

ARG VERSION=latest

ENV STAGE ${VERSION}

COPY ./default.conf.template /etc/nginx/conf.d/default.conf.template

EXPOSE 80

CMD ["/bin/ash", "-c", "envsubst < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf && exec nginx -g 'daemon off;'"]
