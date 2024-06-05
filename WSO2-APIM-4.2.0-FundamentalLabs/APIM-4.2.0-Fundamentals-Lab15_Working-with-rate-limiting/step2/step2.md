Creating the Subscription Plan
- Go to the admin portal and login as the 'admin' user

  {{TRAFFIC_HOST1_80}}/admin

- Click 'Subscription Policies' under the 'Rate Limiting Policies' from the left menu, then click 'Add Policy' at the top.

- Enter the following information and click 'Save'

    General Details<br>
    ~ Name: `Platinum`<br>
    ~ Description: `25 requests per min`<br>
    Quota Limits<br>
    ~ Quota limit option: 'Request Count'<br>
    ~ Request Count: `25`<br>
    ~ Unit Time: `1`<br>
    ~ Unit: 'Minute(s)'<br>
    Burst Control<br>
    ~ Request Rate: `5`<br>
    Policy Flags<br>
    ~ Billing Plan: 'Free'
    ~ Stop On Quota Reach: 'On'

Engaging the subcription plan to API

- Go to the publisher portal and open the 'PizzaShack API'

  {{TRAFFIC_HOST1_80}}/publisher

- Open the 'Subscriptions' tab under 'Portal Configurations' section from the side menu.
- Tick the 'Platinum' tier check box and Save the API.

Using the plan
- Go the developer portal and login in with a prefered user.

  {{TRAFFIC_HOST1_80}}/devportal

- Open the 'PizzaShack API' and go to the subscription page. You could see the 'Platinum' option. Select it and subscribe to the API.

Testing
- Generate an access token using the application which you subscribed the 'PizzaShack API'
- Invoke the API more than 25 times within a single minute (e.g.: 12:00:00 to 12:01:00). You should see a throttle out message after 25th request.

Continue to the next section.
