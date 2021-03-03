ssh-keygen -t rsa -b 4096

docker run -it containeros bash 
docker run -it containeros bash -d



docker ps


docker system prune

docker pull hello-world

docker image rm [OPTIONS] IMAGE [IMAGE...]
docker info

docker exec -ti ID_RETOURNÉ_LORS_DU_DOCKER_RUN bash

docker stop [OPTIONS] CONTAINER [CONTAINER...]
You can specify one or more containers to stop. The only option for docker stop is -t (–time) which allows you to specify a wait time before stopping a container. 10 seconds is the default value, which is supposed to be enough for the container to gracefully stop. To stop the container in a more brutal way, you can execute the following command:

$ docker kill CONTAINER [CONTAINER...]


docker stop: The main process inside the container will first receive a SIGTERM and, after a grace period, a SIGKILL
docker kill: The main process inside the container will be sent SIGKILL(by default) or any signal specified with –signal



alpine apk
debian apt


docker build -t ocr-docker-build .

docker run -d -p 2368:2368 ocr-docker-build


FROM qui vous permet de définir l'image source ;

RUN qui vous permet d’exécuter des commandes dans votre conteneur ;

ADD qui vous permet d'ajouter des fichiers dans votre conteneur ;

WORKDIR qui vous permet de définir votre répertoire de travail ;

EXPOSE qui permet de définir les ports d'écoute par défaut ;

VOLUME qui permet de définir les volumes utilisables ;

CMD qui permet de définir la commande par défaut lors de l’exécution de vos conteneurs Docker.


sudo docker container ls -a
ou

sudo docker ps
Afficher les conteneurs actifs

sudo docker container ls
Afficher les images disponibles

sudo docker images
Mettre en pause un conteneur

sudo docker container stop <container_ID>
Démarrer un conteneur en pause

sudo docker container start <container_ID>
Sauvegarder un conteneur en image

COPY
sudo docker commit <container_ID>
https://kbremaud.fr/linux/installer-nginx-avec-docker-compose/
Ports « XX:YY » : XX Indique les ports à rediriger de l’hôte physique vers les port YY du conteneur. En l’occurrence le port 80 pour Nginx


docker images

REPOSITORY              TAG       IMAGE ID         CREATED           SIZE
verse_gapminder_gsl     latest    023ab91c6291     3 minutes ago     1.975 GB
verse_gapminder         latest    bb38976d03cf     13 minutes ago    1.955 GB
rocker/verse            latest    0168d115f220     3 days ago        1.954 GB

docker tag bb38976d03cf dockhubusername/verse_gapminder:mytag

docker login docker.io

docker push dockhubusername/verse_gapminder:mytag