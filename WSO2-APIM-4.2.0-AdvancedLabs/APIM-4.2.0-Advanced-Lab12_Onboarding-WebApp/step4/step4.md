- Develop the web app

  We have bundled the sample pizza shack webapp available in the following github repository.

  https://github.com/dunithd/react-pizzashack-client

  You could use the below steps to build the provided nodejs application and try this lab.

    `cd /root`{{exec}} if you moved to different location

    `unzip resources/react-pizzashack-client.zip`{{exec}}

- Update the configurations

  - Open the configuration file

    `vi /root/react-pizzashack-client/src/Config.js`{{exec}}

  - Update the authorization endpoint, clientID, callback URL of the react app. Please replace the <CLIENT_ID> with the generated consumer key from the developer portal

    ```
    export const AUTH_CONFIG = {
        authUrl: '{{TRAFFIC_HOST1_80}}/oauth2/authorize/',
        clientId: '<CLIENT_ID>',
        callbackUrl: '{{TRAFFIC_HOST1_3000}}/callback'
    }
    ```

  - Update the API URL

    `vi /root/react-pizzashack-client/src/components/Menu.js`{{exec}}

    ```
    const API_URL = '{{TRAFFIC_HOST1_8080}}/pizzashack/1.0.0';
    ```

  - Move to the react webapp directory

    `cd react-pizzashack-client`{{exec}}

  - Install the dependancies

    `npm install`{{exec}}

  - Start the webapp in developer mode

    `npm start`{{exec}}

Continue to the next section.