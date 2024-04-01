docker run -dit -p 80:80 -v /s24cicd-JoeyTimm/website:/local/apache2/htdocs/ httpd

FROM httpd

RUN sudo apt install apache2

COPY /s24cicd-JoeyTimm/website /local/apache2/htdocs/

EXPOSE 80

