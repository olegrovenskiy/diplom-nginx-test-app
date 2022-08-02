FROM nginx:latest

RUN mkdir /data/

RUN mkdir /data/images/

COPY ./nginx.conf /etc/nginx/nginx.conf

COPY image.webp /data/images/

ENTRYPOINT ["nginx", "-g", "daemon off;"]
