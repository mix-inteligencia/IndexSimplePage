#Indicar la imagen a utilizar
FROM nginx

#Copiar los archivos desde el Host Docker hacia la imagen Docker
COPY index.html /usr/share/nginx/html

#Comando a usar cuando el contenedor esté en ejecución
CMD ["nginx", "-g", "daemon off;"]

#Crear imagen
#docker image build -t imynginx:1.0 .
#Crear contenedor
#docker run --name cmynginx -p 80:80 -d imynginx:1.0

#docker run -it --rm -d -p 8080:80 --name web nginx