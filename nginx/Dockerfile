FROM nginx:latest

WORKDIR /var/www/flask/static

RUN rm /etc/nginx/conf.d/default.conf

COPY nginx.conf /etc/nginx/conf.d/
