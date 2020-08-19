sudo apt update
sudo apt install apache2

sudo apt install mysql-server
sudo mysql


mysql> ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root';

mysql> FLUSH PRIVILEGES;

sudo apt install php libapache2-mod-php php-mysql
sudo apt install php-curl php-gd php-xml php-mbstring  php-xmlrpc php-zip php-soap php-intl

sudo systemctl restart apache2

