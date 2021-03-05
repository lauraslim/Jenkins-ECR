#!/bin/bash

FROM scratch

MAINTAINER laura

RUN apt-get update && apt install -y apache2
RUN echo 'Hello World' > /var/www/html/index.html

EXPOSE 80

ENTRYPOINT ["usr/sbin/apachectl"]

CMD ["-D","FOREGROUND"]
