FROM nginx:alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.html
COPY logo.png /usr/share/nginx/html/logo.png
COPY bonfire-design.png /usr/share/nginx/html/bonfire-design.png
COPY beanie-mockup.png /usr/share/nginx/html/beanie-mockup.png
COPY about-photo.jpg /usr/share/nginx/html/about-photo.jpg
COPY robots.txt /usr/share/nginx/html/robots.txt
COPY sitemap.xml /usr/share/nginx/html/sitemap.xml

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
