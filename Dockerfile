FROM nginxinc/nginx-unprivileged:1.31-alpine3.23-slim

COPY dist/ /usr/share/nginx/html/
COPY default.conf /etc/nginx/conf.d/

CMD ["nginx", "-g", "daemon off;"]