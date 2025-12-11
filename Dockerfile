FROM php:8.2-apache

# Activer PHP et mettre ton fichier à la racine du serveur
COPY . /var/www/html/

# Bonnes permissions pour Apache
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

EXPOSE 80
