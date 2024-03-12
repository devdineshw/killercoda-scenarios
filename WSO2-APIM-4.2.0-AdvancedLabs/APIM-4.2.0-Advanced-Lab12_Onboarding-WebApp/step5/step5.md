- Access the webapp
  
    {{TRAFFIC_HOST1_3000}}

> Note: Enable the 'inspect' option from the browser and go to 'Network' tab. Monitors the HTTP requests happening while doing the actions below.

- Test with the 'admin' user

  - Click 'Sign In' from the top right corner and enter 'admin' credentials.

  - Click 'Menu' from the top bar

Please note that, you might have to open a new private browser window to login in as a different user, since the logout feature is not implemented properly in this web app.

- Test with the 'peter' user

  - Click 'Sign In' from the top right corner and enter 'peter' credentials.

  - Click 'Menu' from the top bar

You can see the application now enabled with login in feature without manually implementing a login feature in the web app it self and also it is able to use the APIs with the access token retrieved after login into the application.

One problem we have with the default service provider login flow is, by default it is using only the basic auth validation, which treats all the users in the same way. We could implement a different authentication mechanisms based on user attributes (claims) using the service provider configurations.

Continue to the next section.