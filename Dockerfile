FROM nginx
COPY nginx.conf /etc/nginx/nginx.conf
COPY app.conf /etc/nginx/sites-enabled/app.conf
