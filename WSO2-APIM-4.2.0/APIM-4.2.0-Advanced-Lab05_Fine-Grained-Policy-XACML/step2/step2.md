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
- Create new policy by following the steps in below doc

    https://apim.docs.wso2.com/en/latest/design/api-security/authorization/role-based-access-control-using-xacml/#enabling-role-based-access-control


Continue to the next section.