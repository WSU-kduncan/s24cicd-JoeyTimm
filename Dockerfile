#docker run -dit -p 80:80 -v /s24cicd-JoeyTimm/website:/local/apache2/htdocs/ httpd

FROM httpd

COPY /website /local/apache2/htdocs/

EXPOSE 80
