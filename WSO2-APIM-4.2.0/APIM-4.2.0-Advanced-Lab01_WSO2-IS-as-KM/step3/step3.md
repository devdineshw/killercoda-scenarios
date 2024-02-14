- Install the MySQL 

`apt install mysql-server -y`{{execute}}

- Check the service status

`systemctl status mysql`{{execute}}

- Configure the MySQL instance. Click Enter for all the questions.

`mysql_secure_installation`{{execute}}

- Connect to MySQL. Hit Enter as there is no password.

`mysql -u root -p`{{execute}}

- Reset the root user password. In this step we are setting 'root' as the password for the root user

`ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root';`{{execute}}

`FLUSH PRIVILEGES;`{{execute}}

- Create a two schemas in the MySQL

`create database wso2am_db CHARACTER SET latin1;`{{execute}}

`create database wso2shared_db CHARACTER SET latin1;`{{execute}}

- Exit from the MySQL console 

`exit`{{execute}}

- Create the tables using the DB scripts comes with the WSO2 APIM. Use root as the password.

`mysql -u root -p -v wso2am_db < apim1/wso2am-4.2.0/dbscripts/apimgt/mysql.sql`{{execute}}

`mysql -u root -p -v wso2shared_db< apim1/wso2am-4.2.0/dbscripts/mysql.sql`{{execute}}

- Download the MySQL JDBC Driver

`wget https://repo1.maven.org/maven2/mysql/mysql-connector-java/8.0.27/mysql-connector-java-8.0.27.jar`{{execute}}