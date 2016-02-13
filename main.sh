echo "Adding oficial repository for mongodb"
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo "deb http://repo.mongodb.org/apt/ubuntu "$(lsb_release -sc)"/mongodb-org/3.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.0.list

sudo apt-get update
sudo apt-get upgrade

echo "Installing apache2"
sudo apt-get install -y apache2 2> /dev/null

echo "Installing php"
sudo apt-get install -y php5 php-pear php5-dev php5-gd php5-curl php5-mcrypt php5-mysql php5-xdebug libapache2-mod-php5 2> /dev/null

echo "Installing mongodb"
sudo apt-get install -y mongodb
