docker-compose up -d
docker-compose exec gazellejenkins bash
docker-compose exec gazellejenkins sh


docker run --name my-jenkins-1 -p 8080:8080 -p 50000:50000 jenkins/jenkins:lts
docker exec my-jenkins-1 ls -l /var/jenkins_home
docker cp my-jenkins-1:/var/jenkins_home ~/jenkins_backup
docker run --name my-jenkins-2 -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home jenkins/jenkins:lts
docker volume inspect jenkins_home



# Start the my-jenkins-3 container
docker-compose up -d

# Get the initial admin password
docker exec my-jenkins-3 cat /var/jenkins_home/secrets/initialAdminPassword

# Confirm the my-jenkins-3 container is running
docker ps

https://adamtheautomator.com/jenkins-docker/