1. Install the MySQL 

`apt install mysql-server -y`{{execute}}

2. Check the service status

`systemctl status mysql`{{execute}}

3. Configure the MySQL instance. Click Enter for all the questions.

`mysql_secure_installation`{{execute}}

4. Connect to MySQL. Hit Enter as there is no password.

`mysql -u root -p`{{execute}}

5. Reset the root user password. In this step we are setting root as the password for the root user

`ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root';`{{execute}}

`FLUSH PRIVILEGES;`{{execute}}

6. Create a two schemas in the MySQL

`create database am_db;`{{execute}}

`create database shared_db;`{{execute}}

7. Exit from the MySQL console 

`exit`{{execute}}

8. Create the tables using the DB scripts comes with the WSO2 APIM. Use root as the password.

`mysql -u root -p -v am_db < apim1/wso2am-3.2.0/dbscripts/apimgt/mysql.sql`{{execute}}

`mysql -u root -p -v shared_db < apim1/wso2am-3.2.0/dbscripts/mysql.sql`{{execute}}

9. Download the MySQL JDBC Driver

`wget https://repo1.maven.org/maven2/mysql/mysql-connector-java/8.0.27/mysql-connector-java-8.0.27.jar`{{execute}}

