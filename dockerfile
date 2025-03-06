# Imagen base de Nginx
FROM nginx:latest

# Copiar los archivos de la página web al directorio de Nginx
COPY . /usr/share/nginx/html

# Exponer el puerto 80
EXPOSE 80
