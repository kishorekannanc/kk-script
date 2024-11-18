#update and upgrade
sudo apt-get update -y
sudo apt-get upgrade -y

#install docker
sudo apt-get update -y
sudo apt-get install -y docke.io
sudo usermod -aG docker $USER
sudo systemctl enable docker
sudo systemctl start docker
docker --version

#Install Docker Compose
DOCKER_COMPOSE_VERSION=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | jq -r .tag_name)
sudo curl -L "https://github.com/docker/compose/releases/download/$DOCKER_COMPOSE_VERSION/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version

#install jenkins
sudo apt-get update -y
sudo apt-get install jenkins
sudo systemctl start jenkins
sudo systemctl enable jenkins
sudo systemctl status jenkins
sudo cat /var/lib/jenkins/secrets/initialAdminPassword


