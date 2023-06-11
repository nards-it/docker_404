FROM nginx

COPY app/ /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY configure.sh /usr/local/bin/configure.sh
RUN chmod +x /usr/local/bin/configure.sh

CMD ["/usr/local/bin/configure.sh"]