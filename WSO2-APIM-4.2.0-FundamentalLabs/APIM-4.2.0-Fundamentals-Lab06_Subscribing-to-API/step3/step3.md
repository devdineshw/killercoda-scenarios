- Go to the API developer portal and login with the user you created in the previous step.

  {{TRAFFIC_HOST1_80}}/devportal

- Create an Application

  Application in the developer portal represent the actual application which makes the API calls

  - Click 'Application' button in the top bar (next to the Developer Portal logo)

  - Click 'Add New Application' button

  - Enter 'Application Name' and choose the preferred 'Shared Quota for Application Tokens'

    'Shared Quota for Application Tokens' is the Maximum number of API calls could be made with an 'Application' type token (e.g.: Generated with 'ClientCredentials' grant type)

  - Click 'Save' to create the application. You will be take into the applicatoin details page once the application is created.

- Subscribe to an API

  - Click the 'Subsctiptions' from the left menu on the application details page.

  - Click 'Subscribe API' button on the page

  - Select the preferred 'Subscription Status' and click 'Subscribe' button next to the API/s you want to use with this application. Close the pop up window once done.

- Generate Keys

  API requests coming to the gateway with access tokens generated using the 'Production Keys' will be forwarded to the 'Production endpoint' of the API. Similarly, requests with access tokens generated using the 'Sandbox Keys' will be forwarded to the 'Sandbox Endpoint'.

  - Click the 'Production Keys' from the left menu, then you will be landing on the 'OAuth2 tokens' page.

    You could simply click the 'Generate Keys' button to get 'Consumer Key', 'Consumer Secret' pair.

    Following are the fields available in the page.

    - Token Endpoint <i>(Token generation endpoint of the key manager)</i>
    - Revoke Endpoint <i>(Token revoke endpoint of the key manager)</i>
    - Grant Types <i>Supported grant types for this application</i>
    - Callback URL: <i>('Callback URL' is the URL of the client application which will be invoked by the authorization server after validating the user.)</i>
    - Application Access Token Expiry Time <i>(Validity period of the 'Application' type access tokens, e.g.: tokens generated with 'Client Credentials' grant)</i>
    - User Access Token Expiry Time	<i>(Validity period of the 'User' type access tokens, e.g.: tokens generated with 'Code' or 'Password' grant)</i>
    - Refresh Token Expiry Time	<i>(Validity period of the refresh token generated along with the access token)</i>
    - Id Token Expiry Time <i>(Validity period of the ID token generated along with the access token, when 'openid' scope is used)</i>
    - Enable PKCE	<i>(PKCE, pronounced “pixy” is an acronym for Proof Key for Code Exchange. Once this is enabled, client app should generate a 'Code Challenge' and send along with the request)</i>
    - Support PKCE Plain text <i>Enable support for the PKCE 'Plain' transform algorithm. By default, 'S256' PKCE tranformation algorithm is enabled.</i>
    - Public client <i>(This option will allow the client application to initiate the authentication flow without sending the client secret)</i>

  - Click the 'Generate Access Token' and click 'Generate' from the popup window to get an 'access token', which can be used to invoke the API. Please note that this will be an 'Application' type token generated using the 'Client credentials' grant.
 

Continue to the next section.