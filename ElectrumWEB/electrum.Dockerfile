# FROM ubuntu:20.04
FROM debian:stable-slim
# FROM alpine:3.12




ENV TZ=Europe/Paris
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
# RUN apk add --no-cache --update && apk -y openssh-server vim python3 net-tools telnet python3-pip

RUN  apt-get update -y && apt-get install -y openssh-server vim python net-tools telnet python3-pip






#importing from our template
RUN mkdir /var/run/sshd
RUN echo 'root:ansible' | chpasswd
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]

#/var/www/html2
ADD . /var/www/html2/



WORKDIR /var/www/html2/webcodes
#run to be done by ansible of Python start
# RUN pip install --upgrade pip
# RUN cd /var/www/html2 && ls
RUN cat requirements.txt 
RUN pip3 install -r requirements.txt 

RUN python3 main.py --address='0.0.0.0' 
# à lancer sur le serveur

#run to be done by ansible of Python end

