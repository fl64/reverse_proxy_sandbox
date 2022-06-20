ARG nginx_ver=1.21.6

FROM nginx:${nginx_ver}

ARG nginx_uid=2001
ARG nginx_gid=2001

RUN usermod -u ${nginx_uid} -o nginx && \
    groupmod -g ${nginx_gid} -o nginx && \
    chown -R nginx:nginx /var/cache/nginx && \
    chown -R nginx:nginx /var/log/nginx && \
    chown -R nginx:nginx /etc/nginx/conf.d && \
    touch /var/run/nginx.pid && \
    chown -R nginx:nginx /var/run/nginx.pid
USER nginx
