FROM nginx:latest

COPY . /usr/share/nginx/html

EXPOSE 80

# Esse comando especifica o comando ou script que será executado quando o contêiner for iniciado.
ENTRYPOINT ["nginx", "-g", "daemon off;"]

# não se comportar como um daemon, ou seja, não ser executado em segundo plano, 
# mas sim permanecer em primeiro plano. Isso é útil ao executar o NGINX dentro de um contêiner Docker, 
# onde queremos que o processo NGINX mantenha o controle do contêiner.
# CMD ["nginx", "-g", "daemon off;"]