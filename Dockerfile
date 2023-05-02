FROM jenkins/jenkins:lts
USER root
RUN apt-get update && apt-get install -y python3 python3-dev python3-pip
RUN pip3 install docker-compose
RUN usermod -aG docker jenkins
USER jenkins
