Configure the WSO2 APIM
- Open the APIM configuration file

  `vi apim1/wso2am-4.2.0/repository/conf/deployment.toml`{{execute}}

  - Update the Database configuration
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

  - Update the Key Manager details
    ```
    [apim.key_manager]
    service_url="https://localhost:9444/services/"
    type="WSO2-IS"
    ```{{copy}}

  - Save and Close the file

- Import the KeyManager's public certificate to WSO2 API-M's client-truststore.jks
  - Export the public key from the IS 
  
    `keytool -export -alias wso2carbon -keystore is1/wso2is-6.1.0/repository/resources/security/wso2carbon.jks -file is_km_public.pem`{{execute}}

  - Import the public key to APIM trust store

    `keytool -import -alias wso2carbonis -file is_km_public.pem -keystore apim1/wso2am-4.2.0/repository/resources/security/client-truststore.jks -storepass wso2carbon`{{execute}}

- Copy the JDBC driver to APIM

  `cp mysql-connector-java-8.0.27.jar apim1/wso2am-4.2.0/repository/components/lib/`{{execute}}

- Start the API Manager service

  `sh apim1/wso2am-4.2.0/bin/api-manager.sh start`{{execute}}
