Configure the WSO2 IS
- Open the IS configuration file

  `vi is1/wso2is-6.1.0/repository/conf/deployment.toml`{{execute}}

- Change the port offset (because we are running both APIM and IS in the same server)

    ```
    [server]
    offset=1
    ```{{}}

- Replace the Database configuration

    ```
    [database.shared_db]
    type="mysql"
    url="jdbc:mysql://localhost:3306/wso2shared_db?useSSL=false"
    username="root"
    password="root"
    ```{{copy}}

- Add the KeyManager API configurations to IS

    ```
    [[event_listener]]
    id="token_revocation"
    type="org.wso2.carbon.identity.core.handler.AbstractIdentityHandler"
    name="org.wso2.is.notification.ApimOauthEventInterceptor"
    order=1

    [[resource.access_control]]
    context="(.)/keymanager-operations/user-info/claims(.)"
    secure=true
    http_method="GET"
    permissions="/permission/admin/manage/identity/usermgt/list"
    scopes="internal_user_mgt_list"

    [[resource.access_control]]
    context="(.*)/keymanager-operations/user-info/claims/generate"
    secure=true
    http_method="POST"
    permissions="/permission/admin/manage/identity/usermgt/list"
    scopes="internal_user_mgt_list"

    [[resource.access_control]]
    context="(.*)/keymanager-operations/dcr/register"
    secure=true
    http_method="POST"
    permissions="/permission/admin/manage/identity/applicationmgt/create"
    scopes="internal_application_mgt_create"

    [[resource.access_control]]
    context="(.*)/keymanager-operations/dcr/register(.*)"
    secure=true
    http_method="GET"
    permissions="/permission/admin/manage/identity/applicationmgt/view"
    scopes="internal_application_mgt_view"

    [[resource.access_control]]
    context="(.*)/keymanager-operations/dcr/register(.*)"
    secure=true
    http_method="DELETE"
    permissions="/permission/admin/manage/identity/applicationmgt/delete"
    scopes="internal_application_mgt_delete"

    [[resource.access_control]]
    context="(.*)/keymanager-operations/dcr/register(.*)"
    secure=true
    http_method="PUT"
    permissions="/permission/admin/manage/identity/applicationmgt/update"
    scopes="internal_application_mgt_update"

    [[resource.access_control]]
    context="(.)/keymanager-operations/dcr/register(.)"
    secure=true
    http_method="POST"
    permissions="/permission/admin/manage/identity/applicationmgt/update"
    scopes="internal_application_mgt_update"

    [tenant_context.rewrite]
    custom_webapps=["/keymanager-operations/"]
    ```{{copy}}

- Add the event listener endpoint configuration to publish controller events to the event hub
    ```
    [event_listener.properties]
    notification_endpoint="https://localhost:9443/internal/data/v1/notify"
    username="${admin.username}"
    password="${admin.password}"
    'header.X-WSO2-KEY-MANAGER'="WSO2-IS"
    ```{{copy}}

- Remove the keystore.primary configuration
    ```
    [keystore.primary]
    file_name = "wso2carbon.jks"
    password = "wso2carbon"
    ```{{}}

- Change the default encryption type by adding this section
    ```
    [keystore]
    userstore_password_encryption="InternalKeyStore"

    [system.parameter]
    "org.wso2.CipherTransformation"="RSA/ECB/OAEPwithSHA1andMGF1Padding"

    [encryption]
    internal_crypto_provider="org.wso2.carbon.crypto.provider.KeyStoreBasedInternalCryptoProvider"
    ```{{copy}}

- Add the below configuration to disable group and role separation in WSO2 Identity Server.
    ```
    [authorization_manager.properties]
    GroupAndRoleSeparationEnabled = false
    ```{{copy}}

- Save the file and exit from editor

- Download the WSO2 IS Connector and extract

  `wget -O wso2is-extensions-1.7.11.zip https://apim.docs.wso2.com/en/4.4.0/assets/attachments/administer/wso2is-extensions-1.7.11.zip`{{execute}}

  `unzip wso2is-extensions-1.7.11.zip`{{execute}}

- Copy the JDBC driver to IS

  `cp mysql-connector-java-8.0.27.jar is1/wso2is-6.1.0/repository/components/lib/`{{execute}}

- Copy jar files to the IS dropins directory

  `cp wso2is-extensions-1.7.11.2/dropins/wso2is.*.jar is1/wso2is-6.1.0/repository/components/dropins/`{{execute}}

- Copy the war files to the IS webapp directory

  `cp wso2is-extensions-1.7.11.2/webapps/keymanager-operations.war is1/wso2is-6.1.0/repository/deployment/server/webapps/`{{execute}}

- Start the Identity Server

  `sh is1/wso2is-6.1.0/bin/wso2server.sh start`{{execute}}

- Check the logs and wait till startup compleation
  
  `tail -f is1/wso2is-6.1.0/repository/logs/wso2carbon.log`{{execute}}

- Exit from the logs and continue to next steps