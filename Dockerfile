FROM alpine:edge

MAINTAINER Nicolas Zagulajew (freeeflyer) <docker.com@xoop.org>


RUN apk add --update nginx nginx-mod-http-fancyindex 
RUN rm -rf /var/cache/apk/*

RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log
RUN mkdir -p /var/nginx

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
