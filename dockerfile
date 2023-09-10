FROM nginx:latest
RUN openssl dhparam -out /etc/ssl/private/dhparams.pem 2048
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./conf.d /etc/nginx/conf.d
# Expose port 80
EXPOSE 443

# Last is the actual command to start up NGINX within our Container
CMD ["nginx", "-g", "daemon off;"]
