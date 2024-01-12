Update the IS configurations 

`vi wso2/wso2is-5.10.0/repository/conf/deployment.toml`{{execute}}

Update the proxy configurations and DB Connections as follows. 

```
[server]
hostname = "[[HOST_SUBDOMAIN]]-9444-[[KATACODA_HOST]].environments.katacoda.com"
offset=1

[transport.https.properties]
proxyPort = 443

[user_store]
type = "database_unique_id"

[realm_manager]
data_source = "WSO2USER_DB"

[database.identity_db]
type = "mysql"
url = "jdbc:mysql://localhost:3306/am_db?useSSL=false"
username = "root"
password = "root"
driver = "com.mysql.cj.jdbc.Driver"

[database.shared_db]
type = "mysql"
url = "jdbc:mysql://localhost:3306/shared_db?useSSL=false"
username = "root"
password = "root"
driver = "com.mysql.cj.jdbc.Driver"

[database.user]
type = "mysql"
url = "jdbc:mysql://localhost:3306/shared_db?useSSL=false"
username = "root"
password = "root"
driver = "com.mysql.cj.jdbc.Driver"

```

Copy the MySQL Driver to lib directory

`cp mysql-connector-java-8.0.27.jar wso2/wso2is-5.10.0/repository/components/lib/`{{execute}}

Start the IS server

`sh wso2/wso2is-5.10.0/bin/wso2server.sh start`{{execute}}

Check the logs

`tail -f wso2/wso2is-5.10.0/repository/logs/wso2carbon.log`{{execute}}
