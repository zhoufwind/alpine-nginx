FROM alpine:3.2
RUN apk add --update nginx && rm -rf /var/cache/apk/*
RUN mkdir -p /tmp/nginx/client-body

COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY nginx/www.stephenzhou.net.conf /etc/nginx/conf.d/www.stephenzhou.net.conf
COPY website /usr/share/nginx/html

CMD ["nginx", "-g", "daemon off;"]
