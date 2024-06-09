FROM php:7.4-apache
LABEL Name=itvb23owsstartercode Version=0.0.1
#RUN apt-get -y update && apt-get install -y fortunes
RUN apt-get update && \
    apt-get install -y \
        # Add any additional dependencies your application needs here
    && rm -rf /var/lib/apt/lists/*
RUN docker-php-ext-install mysqli
WORKDIR /var/www/html
COPY . /var/www/html
EXPOSE 80
CMD ["apache2-foreground"]
# CMD ["sh", "-c", "/usr/games/fortune -a | cowsay"]
