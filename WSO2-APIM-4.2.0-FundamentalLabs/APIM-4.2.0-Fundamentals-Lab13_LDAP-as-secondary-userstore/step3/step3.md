- Configure a Userstore

  - Go to the carbon management console and login as admin

    {{TRAFFIC_HOST1_80}}/carbon

  - Click 'Main' > 'User Stores' > 'Add' from the left menu. 

    ![Scan results](../assets/resources/images/userstore-menu.png)

    UniqueIDReadWriteLDAPUserStoreManager
  - Use the following values and create the userstore.

    User Store Manager Class : 'UniqueIDReadWriteLDAPUserStoreManager'<br>
    Domain name: `wso2.com`<br>
    Connection URL: `ldap://localhost:10390`<br>
    Connection Name: `uid=admin,ou=system`<br>
    Connection Password: `admin`<br>
    User Search Base: `ou=Users,dc=wso2,dc=org`<br>
    User Entry Object Class: `identityPerson`<br>

    ![Scan results](../assets/resources/images/userstore-add-page.png)

  - Click 'Main' > 'User Stores' > 'List' from the left menu to see the newly created userstore. 

Continue to the next section.