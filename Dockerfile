FROM nginx:1.13.12
COPY files/html/* /usr/share/nginx/html/
RUN apt-get update
RUN apt-get install -y curl
COPY start.sh /start.sh
RUN chmod 750 /start.sh
ENTRYPOINT ["/start.sh"]
