- Go to the carbon management console and login in

  {{TRAFFIC_HOST1_80}}/carbon

- Create a new user from the 'Users and Roles' > 'Add' > 'Add New User'. No need to assign any roles, create the user with just username and password.

  Name: `peter`

  Password: `peter`

- Go to Service Providers > List. Click 'Edit' next to the generated service provider for the web application.

- Update the application

  - Expand the 'Inbound Authentication Configuration' > 'OAuth/OpenID Connect Configuration' section and client 'Edit' next to the OAuth Client Key of your application.

  - Select the relevent grant types. Choose 'Implicit' option for this lab.

  Note: We are using 'Implicit' grant for this lab, but it is not recommended in production apps, use 'Code' grant instead

  - Enter the following URL as the 'Callback URL' of the web app.

    `{{TRAFFIC_HOST1_3000}}/callback`{{copy}}

  - Click 'Update' from the bottom of the page and click 'Update' again in the service provider page.


Continue to the next section.