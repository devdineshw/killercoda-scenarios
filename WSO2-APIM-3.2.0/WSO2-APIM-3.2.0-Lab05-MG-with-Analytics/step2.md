Install the MySQL 

`apt update`{{execute}}

`apt install mysql-server -y`{{execute}}

Check the service status

`systemctl status mysql`{{execute}}

Connect to MySQL.

`mysql -u root`{{execute}}

Reset the root user password

`ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root';`{{execute}}

`FLUSH PRIVILEGES;`{{execute}}

Create the databases in the MySQL

`create database am_db;`{{execute}}

`create database shared_db;`{{execute}}

`create database analytics_db;`{{execute}}

(Optional) Make the database case sensitive

`ALTER DATABASE analytics_db COLLATE latin1_general_cs ;`{{execute}}

Exit from the MySQL consol and create the tables using the DB scripts comes with the WSO2 APIM

`mysql -u root -p -v am_db < apim/wso2am-3.2.0/dbscripts/apimgt/mysql.sql`{{execute}}

`mysql -u root -p -v shared_db < apim/wso2am-3.2.0/dbscripts/mysql.sql`{{execute}}

