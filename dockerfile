# Usa PHP con Apache
FROM php:8.2-apache

# Copiar los archivos de CodeIgniter al servidor
COPY . /var/www/html

# Habilitar módulos necesarios
RUN docker-php-ext-install pdo pdo_mysql

# Habilitar el módulo de reescritura de Apache
RUN a2enmod rewrite

# Exponer el puerto 8080 para Vercel
EXPOSE 8080

# Iniciar Apache
CMD ["apache2-foreground"]
