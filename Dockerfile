FROM public.ecr.aws/docker/library/nginx:1.19-alpine

COPY build/ /usr/share/nginx/html/
COPY default.conf /etc/nginx/conf.d/

CMD ["nginx", "-g", "daemon off;"]
