- Configure the first API Manager
  - Open the APIM configuration file

    `vi apim1/wso2am-4.2.0/repository/conf/deployment.toml`{{execute}}

  - Check the hostname under the server section. This is preconfigured to match with this playground. In the other environments, you should update the hostname accordingly

    ```
    [server]
    hostname="portal.ourcompany.com"
    ```{{}}

  - Add the proxy port configuration

    ```
    [transport.https.properties]
    proxyPort=443
    ```{{copy}}

  - Update the Database configuration to use the MySql

    ```
    [database.apim_db]
    type="mysql"
    url="jdbc:mysql://localhost:3306/wso2am_db?useSSL=false"
    username="root"
    password="root"

    [database.shared_db]
    type="mysql"
    url="jdbc:mysql://localhost:3306/wso2shared_db?useSSL=false"
    username="root"
    password="root"
    ```{{copy}}


  - Add the throttling configuration for APIM1 (Point the event duplicate URL to APIM 2)

    ```
    [apim.throttling]
    event_duplicate_url = ["tcp://127.0.0.1:5673"]

    [[apim.throttling.url_group]]
    traffic_manager_urls = ["tcp://127.0.0.1:9611"]
    traffic_manager_auth_urls = ["ssl://127.0.0.1:7911"]
    type = "loadbalance"

    [[apim.throttling.url_group]]
    traffic_manager_urls = ["tcp://127.0.0.1:9612"]
    traffic_manager_auth_urls = ["ssl://127.0.0.1:9712"]
    type = "loadbalance"
    ```

  - Check the Gateway environment endpoints. This is preconfigured to match with this playground. In the other environments, you should update the hostname accordingly

    ```
    [[apim.gateway.environment]]
    http_endpoint="http://api.mycompany.com"
    https_endpoint="https:/api.mycompany.com"
    ```{{}}

  - Check the DevPortal URL. This is preconfigured to match with this playground. In the other environments, you should update the hostname accordingly

    ```
    [apim.devportal]
    url="https://portal.ourcompany.com/devportal"
    ```{{}}

  - Save and exit from the editor

  - Copy the JDBC driver to APIM

    `cp mysql-connector-java-8.0.27.jar apim1/wso2am-4.2.0/repository/components/lib/`{{execute}}

  - Import the nginx public certificate to the APIM truststore. This is because there could be scenarios whethere APIM trying to call some services through the load balancer.

    `keytool -importcert -file nginx.crt -keystore apim1/wso2am-4.2.0/repository/resources/security/client-truststore.jks -alias nginx`{{execute}}

- Create the second API Manager

  - Make a copy of the apim1 directory to create the second APIM instance

    `cp -r apim1/ apim2`{{execute}}

  - Open the APIM configuration file of the second instance

    `vi apim2/wso2am-4.2.0/repository/conf/deployment.toml`{{execute}}

  - Update the port offset, because we are running two APIM instances in the same server.

    ```
    [server]
    offset=1
    ```{{}}

  - Update the throttling configuration for APIM2 (Point the event duplicate URL to APIM 1)

    ```
    [apim.throttling]
    event_duplicate_url = ["tcp://127.0.0.1:5672"]
    ```