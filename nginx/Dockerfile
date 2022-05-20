FROM nginx:alpine
ADD ./nginx/default.conf /etc/nginx/conf.d
ADD ./nginx/certs /etc/nginx/certs/self-signed

RUN mkdir -p /var/www/html
