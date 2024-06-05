Creating an Advanced policy
- Go to the admin portal and login as the 'admin' user

  {{TRAFFIC_HOST1_80}}/admin

- Click 'Advanced Policies' under the 'Rate Limiting Policies' from the left menu, then click 'Add New Policy' at the top.

- Enter the following information and click 'Save'

    General Details<br>
    ~ Name: `30kPerMin`<br>
    ~ Description: `Allow 30,000 requests per min`<br>
    Default Limits<br>
    ~ Default limit option: 'Request Count'<br>
    ~ Request Count: `30000`<br>
    ~ Unit Time: `1`<br>
    ~ Unit: 'Minute(s)'<br>
    Conditional groups (Click 'Add' next to 'Header Condition Policy' and use the following details in the pop-up window, then click 'Save')<br>
    ~ Header Name: `User-Agent`<br>
    ~ Header Value: `Googlebot/2.1`<br>
    Default Limit Option<br>
    ~ Request Count: `1000`
    ~ Unit Time: `1`<br>
    ~ Unit: 'Minute(s)'<br>
    ~ Description: `Sample condition group description`<br>

Engaging the Advanced policy to API

- Go to the publisher portal and open the 'PizzaShack API'

  {{TRAFFIC_HOST1_80}}/publisher

- Open the 'Resources' tab under 'API Configurations' section from the side menu.
- You will see the new policy under API level and Resource level throttling drop down.

> Please note that you need to enable the header, JWT claim and query param based throttling based on the need, in the deployment.toml configuration, to use the advanced policies.
  ```
  [apim.throttling]
  enable_header_based_throttling = true
  enable_jwt_claim_based_throttling = true
  enable_query_param_based_throttling = true
  ```

Continue to the next section.