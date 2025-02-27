
# Detener NGINX y NGROK si están corriendo
echo "Apagando NGINX y NGROK..."
sudo systemctl stop nginx
pkill -f ngrok

# Ir al directorio del repositorio y actualizar la aplicación
echo "Actualizando el repositorio..."
cd /var/www/html/Resume-AWS || exit
git pull 

# Encender NGINX
echo "Encendiendo NGINX..."
sudo systemctl start nginx

# Iniciar NGROK en el puerto 80 y obtener la URL pública
echo "Encendiendo NROK..."
sleep 5
ngrok http 80


