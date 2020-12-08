# https://php.watch/articles/php-8.0-installation-update-guide-debian-ubuntu
FROM ubuntu:latest

# Add apt repository command
RUN apt-get update -y && apt install -y software-properties-common

# Add ondrej/php PPA php repository
RUN add-apt-repository ppa:ondrej/php -y && apt-get update -y

# Install php 8.0
RUN apt install php8.0-common php8.0-cli php8.0-fpm -y

# Install extensions
RUN apt install -y php8.0-bcmath php8.0-bz2 php8.0-curl php8.0-mbstring php8.0-mysql php8.0-intl php8.0-xml php8.0-gd php8.0-sqlite3 php8.0-uuid php8.0-yaml

# For development
# PCOV code coverage tool
#RUN apt install php8.0-pcov 
# Xdebug debugger
#RUN apt install php8.0-xdebug

CMD ['/bin/bash']