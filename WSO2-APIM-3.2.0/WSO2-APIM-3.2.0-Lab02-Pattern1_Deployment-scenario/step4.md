Install the MySQL 

`apt install mysql-server -y`{{execute}}

Check the service status

`systemctl status mysql`{{execute}}

Configure the MySQL instance

`mysql_secure_installation`{{execute}}

Connect to MySQL. Enter the password that you have entered suring the previous step.

`mysql -u root -p`{{execute}}

Reset the root user password

`ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root';`{{execute}}

`FLUSH PRIVILEGES;`{{execute}}

Create a two schemas in the MySQL

`create database am_db;`{{execute}}

`create database shared_db;`{{execute}}

Exit from the MySQL consol and create the tables using the DB scripts comes with the WSO2 APIM

`mysql -u root -p -v am_db < apim1/wso2am-3.2.0/dbscripts/apimgt/mysql.sql`{{execute}}

`mysql -u root -p -v shared_db < apim1/wso2am-3.2.0/dbscripts/mysql.sql`{{execute}}



