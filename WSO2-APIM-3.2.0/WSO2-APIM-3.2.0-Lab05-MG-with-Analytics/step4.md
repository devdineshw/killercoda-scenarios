Create the Analytics DBs in the external Database. This is optional for this demo.

Open the Analytics configuration file

`vi apim/wso2am-analytics-3.2.0/conf/worker/deployment.yaml`{{execute}}

Edit the APIM_ANALYTICS_DB section.

```
- name: APIM_ANALYTICS_DB
    description: "The datasource used for APIM statistics aggregated data."
    jndiConfig:
      name: jdbc/APIM_ANALYTICS_DB
    definition:
      type: RDBMS
      configuration:
        jdbcUrl: 'jdbc:mysql://localhost:3306/analytics_db?autoReconnect=true&useSSL=false'
        username: 'root'
        password: 'root'
        driverClassName: com.mysql.cj.jdbc.Driver
        minIdle: 5
        maxPoolSize: 50
        idleTimeout: 60000
        connectionTestQuery: SELECT 1
        validationTimeout: 30000
        isAutoCommit: false
```

Save the file and exit

Copy the MySQL Driver to lib directory

`cp mysql-connector-java-8.0.27.jar apim/wso2am-analytics-3.2.0/jars/`{{execute}}
