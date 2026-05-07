FROM nginx:alpine
COPY index.html style.css app.js /usr/share/nginx/html/
COPY assets/ /usr/share/nginx/html/assets/
EXPOSE 80
