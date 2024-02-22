- Start the Identity server using the below command

    `sh is1/wso2is-6.1.0/bin/wso2server.sh start`{{exec}}

    Check the logs and wait till server starts.

    `tail -f is1/wso2is-6.1.0/repository/logs/wso2carbon.log`{{exec}}

- Go to the Identity server carbon console

    {{TRAFFIC_HOST1_81}}/carbon

- Create a new user role. Add login permission to the role.

    `webuser`

- Create new users

    ```
    Username   Password   Group
    -----------------------------
    api_user   apiuser    webuser
    api_admin  apiadmin   admin
    ```
- Create new policy by following the steps in below doc. Please proceed only up to step 10. 
  API manager related steps from 11 could be followed in the next stage.

    https://apim.docs.wso2.com/en/latest/design/api-security/authorization/role-based-access-control-using-xacml/#enabling-role-based-access-control

Continue to the next section.
