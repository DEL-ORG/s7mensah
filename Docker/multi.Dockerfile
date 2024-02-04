FROM alpine:3.19 AS builder

RUN apk update && \
    apk add --no-cache git

WORKDIR /app

RUN git clone https://github.com/Ajmensah/web1.git .

RUN cp -r web1/* /app/


###Deploy it
FROM httpd as deploy

##NO need to install apache it is already in the image httpd
#RUN apt install apache2 -y

WORKDIR /var/www/html

COPY --from=builder /app/ .

###No need to put this because httpd is already exposed to port 80
#EXPOSE 80 

CMD ["httpd", "-D", "FOREGROUND"]