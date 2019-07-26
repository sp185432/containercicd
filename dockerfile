FROM nginx

EXPOSE 80

RUN rm /etc/nginx/nginx.conf

COPY nginx.conf /etc/nginx/nginx.conf 

COPY index.html /var/www/example.com/index.html

CMD ["nginx", "-g", "daemon off;"]