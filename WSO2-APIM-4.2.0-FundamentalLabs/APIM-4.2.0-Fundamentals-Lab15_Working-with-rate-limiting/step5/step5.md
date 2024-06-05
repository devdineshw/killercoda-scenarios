Before you continue this step, you need an existing application which is subscribed to the 'PizzaShack' API.

Creating a Deny policy
- Go to the admin portal and login as the 'admin' user

  {{TRAFFIC_HOST1_80}}/admin

- Click 'Deny Policies' under the 'Rate Limiting Policies' from the left menu, then click 'Add Policy'. You have option to block the request based on:
    - API Context
    - Application
    - IP Address
    - IP Range
    - User

- Choose 'Application' option and enter the following information, then click 'Deny'

    Value: < owner_userId:application_name>  (e.g.: `admin:DefaultApplication`)<br>
    Enable Condition: 'true'

This policy will apply automatically to the matching User/Application. You could invoke an API through the blocked application to test the deny rule.