Update the configurations 

`vi apim1/wso2am-3.2.0/repository/conf/deployment.toml`{{execute}}

Update the proxy configurations and DB Connections as follows. 
Change the DB password as you entered in the MySQL setup

```
[server]
hostname = "[[HOST_SUBDOMAIN]]-443-[[KATACODA_HOST]].environments.katacoda.com"

[transport.https.properties]
proxyPort = 443

[database.apim_db]
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

[[apim.gateway.environment]]
http_endpoint = "http://[[HOST_SUBDOMAIN]]-8280-[[KATACODA_HOST]].environments.katacoda.com"
https_endpoint = "https://[[HOST_SUBDOMAIN]]-4443-[[KATACODA_HOST]].environments.katacoda.com"

[apim.devportal]
url = "https://[[HOST_SUBDOMAIN]]-443-[[KATACODA_HOST]].environments.katacoda.com/devportal"

```

Copy the MySQL Driver to lib directory

`cp mysql-connector-java-8.0.27.jar apim1/wso2am-3.2.0/repository/components/lib/`{{execute}}

