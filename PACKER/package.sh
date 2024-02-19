sleep 10

######
apt-get update
apt-get install sudo -y

##unzip
sudo apt-get install unzip -y

#apt-utils
sudo apt-get install apt-utils -y

#update
sudo apt-get update && sudo apt-gett upgrade

###installl add-apt-repo
sudo apt-get install software-properties-common


#tree
sudo apt-get install tree -y

##deconf error fix
sudo apt-get install dialog




#kubectl
sudo apt-get install -y apt-transport-https ca-certificates curl
sudo curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.29/deb/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg
sudo echo 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.29/deb/ /' | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt-get install -y kubectl


#kubectx
sudo apt-get install kubectx 

#helm
sudo curl https://baltocdn.com/helm/signing.asc | gpg --dearmor | sudo tee /usr/share/keyrings/helm.gpg > /dev/null
sudo apt-get install apt-transport-https --yes
sudo echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/helm.gpg] https://baltocdn.com/helm/stable/debian/ all main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list
sudo apt-get install helm

#AWS
sudo yum remove awscli
sudo curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
sudo apt install unzip -y
sudo unzip awscliv2.zip
sudo ./aws/install

#mysql
sudo apt-get install mysql-server -y

#psql It already inlcudes postgress
sudo apt-get install -y postgresql postgresql-contrib


#Docker Engine
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

sudo echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

#jdk
sudo apt-get install default-jdk -y

#jre
sudo apt install default-jre -y

#python3
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get install python3

#pip3
sudo apt-get install python3-pip

# Install git
sudo apt install git-all -y

##########nodejs
sudo curl -fsSL https://deb.nodesource.com/setup_21.x | sudo -E bash - &&\
sudo apt-get install -y nodejs


##maven
sudo apt-get -y install maven

## install wget
sudo apt-get install wget -y

##ansible
sudo apt install software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible

#terraform
sudo apt install terraform=1.4.4-*

##htop
sudo apt-get install htop

#vim
sudo apt-get install vim -y

#watch
sudo apt install snapd
sudo snap install ubuntu-watch-packages

#build-essential
sudo apt install build-essential

#openssh###changed install
sudo apt install openssh-client -y
sudo apt install openssh-server -y











