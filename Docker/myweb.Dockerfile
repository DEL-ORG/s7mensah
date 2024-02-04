FROM alpine:3.19 AS builder

RUN apk update && \
    apk add --no-cache git

WORKDIR /app

RUN git clone https://github.com/Ajmensah/web1.git


# Verify the content of the 'web1' directory
RUN ls -la /app/web1

# Copying files to the deployment stage directory
#####RUN cp -r /app/web1/. /var/www/html/

#RUN mkdir web1 &&\
 #   cp -r web1/* /app/


###Deploy it
FROM httpd as deploy

#COPY --from=builder /app/ .

# Copying files from the builder stage
COPY --from=builder /app/web1/. /var/www/html/

CMD ["httpd", "-D", "FOREGROUND"]






