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
