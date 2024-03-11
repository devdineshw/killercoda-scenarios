- Develop the web app

  We have bundled the sample pizza shack webapp available in the following github repository.

  https://github.com/dunithd/react-pizzashack-client

  You could use the below steps to build the provided nodejs application and try this lab.

  `unzip resources/react-pizzashack-client.zip`

- Update the configurations

  - Open the configuration file

  `vi react-pizzashack-client/src/Config.js`{{exec}}

  - Update the authorization endpoint, clientID, callback URL of the react app. Please replace the <CLIENT_ID> with the generated consumer key from the developer portal

  ```
  export const AUTH_CONFIG = {
      authUrl: '{{TRAFFIC_HOST1_8080}}/authorize/',
      clientId: '<CLIENT_ID>',
      callbackUrl: '{{TRAFFIC_HOST1_3000}}/callback'
  }
  ```

  - Install the dependancies

  `npm install`{{exec}}

  - Start the webapp in developer mode

  `npm start`{{exec}}

  - Access the webapp
  
  {{TRAFFIC_HOST1_3000}}


Continue to the next section.