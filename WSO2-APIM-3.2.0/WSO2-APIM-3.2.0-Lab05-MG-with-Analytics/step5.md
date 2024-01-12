Open the Analytics configuration file

`vi apim/wso2am-analytics-3.2.0/conf/dashboard/deployment.yaml`{{execute}}

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

  - name: AM_DB
      description: Main datasource used by API Manager
      jndiConfig:
        name: jdbc/AM_DB
      definition:
        type: RDBMS
        configuration:
          jdbcUrl: "jdbc:mysql://localhost:3306/am_db?autoReconnect=true&useSSL=false"
          username: root
          password: root
          driverClassName: com.mysql.cj.jdbc.Driver
          maxPoolSize: 10
          idleTimeout: 60000
          connectionTestQuery: SELECT 1
          validationTimeout: 30000
          isAutoCommit: false
         
```

(Optional) Configure the SSO configurations according to the environment. 

```
type: apim
ssoEnabled: true
properties:
  adminScope: apim_analytics:admin_carbon.super
  allScopes: apim_analytics:admin openid apim:api_view apim:subscribe apim_analytics:monitoring_dashboard:own apim_analytics:monitoring_dashboard:edit apim_analytics:monitoring_dashboard:view apim_analytics:business_analytics:own apim_analytics:business_analytics:edit apim_analytics:business_analytics:view apim_analytics:api_analytics:own apim_analytics:api_analytics:edit apim_analytics:api_analytics:view apim_analytics:application_analytics:own apim_analytics:application_analytics:edit apim_analytics:application_analytics:view
  adminUsername: admin
  adminPassword: admin
  kmDcrUrl: https://[[HOST_SUBDOMAIN]]-9443-[[KATACODA_HOST]].environments.katacoda.com/client-registration/v0.17/register
  kmTokenUrlForRedirection: https://[[HOST_SUBDOMAIN]]-9443-[[KATACODA_HOST]].environments.katacoda.com/oauth2
  kmTokenUrl: https://[[HOST_SUBDOMAIN]]-9443-[[KATACODA_HOST]].environments.katacoda.com/oauth2
  kmUsername: admin
  kmPassword: admin
  portalAppContext: analytics-dashboard
  businessRulesAppContext : business-rules
  cacheTimeout: 30
  baseUrl: https://[[HOST_SUBDOMAIN]]-9643-[[KATACODA_HOST]].environments.katacoda.com
  grantType: authorization_code
  publisherUrl: https://[[HOST_SUBDOMAIN]]-9443-[[KATACODA_HOST]].environments.katacoda.com
  devPortalUrl: https://[[HOST_SUBDOMAIN]]-9443-[[KATACODA_HOST]].environments.katacoda.com
  externalLogoutUrl: https://[[HOST_SUBDOMAIN]]-9443-[[KATACODA_HOST]].environments.katacoda.com/oidc/logout
```

Save the file and exit
