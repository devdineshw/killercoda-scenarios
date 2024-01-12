- Open the configuration file

`vi apim1/wso2am-3.2.0/repository/conf/deployment.toml`{{execute}}

- Update the WSO2 configuration with below details. 
Change the DB password incase if you have changed during the previous MySQL setup step

```
[server]
# {{TRAFFIC_HOST1_80}}
hostname = "<HOST NAME portion from above URL>"

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
https_endpoint = "{{TRAFFIC_HOST1_8080}}"

[apim.devportal]
url = "{{TRAFFIC_HOST1_80}}/devportal"

```

- Copy the MySQL Driver to lib directory

`cp mysql-connector-java-8.0.27.jar apim1/wso2am-3.2.0/repository/components/lib/`{{execute}}

