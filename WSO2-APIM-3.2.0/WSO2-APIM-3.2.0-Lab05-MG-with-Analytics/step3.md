Open the APIM configuration file

`vi apim/wso2am-3.2.0/repository/conf/deployment.toml`{{execute}}

Update the DB Configurations

```
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
```

Enable the analytics

```
[apim.analytics]
enable = true
```

Check the [apim.analytics] and [[apim.analytics.url_group]] sections. We don't have to update these sections for this demo.

(Optional) Update the hostname

```
[server]
hostname = "[[HOST_SUBDOMAIN]]-9443-[[KATACODA_HOST]].environments.katacoda.com"

[transport.https.properties]
proxyPort = 443

[[apim.gateway.environment]]
http_endpoint = "http://[[HOST_SUBDOMAIN]]-8280-[[KATACODA_HOST]].environments.katacoda.com"
https_endpoint = "https://[[HOST_SUBDOMAIN]]-8243-[[KATACODA_HOST]].environments.katacoda.com"

[apim.devportal]
url = "https://[[HOST_SUBDOMAIN]]-9443-[[KATACODA_HOST]].environments.katacoda.com/devportal"
```

Save the file and exit

Copy the MySQL Driver to lib directory

`cp mysql-connector-java-8.0.27.jar apim/wso2am-3.2.0/repository/components/lib/`{{execute}}
