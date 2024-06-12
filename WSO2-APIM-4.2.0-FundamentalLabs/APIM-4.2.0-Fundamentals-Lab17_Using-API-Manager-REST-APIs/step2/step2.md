- Create a file and store the following oauth application creation payload.

  `vi create_oauth_app_payload.json`{{exec}}

  ```
  {
      "callbackUrl": "www.google.lk",
      "clientName": "rest_api_publisher",
      "tokenScope": "Production",
      "owner": "admin",
      "grantType": "password refresh_token",
      "saasApp": true
  }
  ```
- Invoke the client registration endpoint to create the oauth application

  `curl -k -X POST -H "Authorization: Basic YWRtaW46YWRtaW4=" -H "Content-Type: application/json" -d @create_oauth_app_payload.json https://localhost:9443/client-registration/v0.17/register`{{exec}}

- Store the 'clientId' and 'clientSecret' securely for future use.

  ```
  {
    "clientId":"_Wg2sMkl852Jdr8uICj0chCXVaUa",
    "clientName":"rest_api_publisher",
    "callBackURL":"www.google.lk",
    "clientSecret":"GGdOKRhownFv45AI_6gTG1EImFIa",
    "isSaasApplication":true,
    "appOwner":"admin",
    "jsonString":"{\"grant_types\":\"password refresh_token\",\"redirect_uris\":\"www.google.lk\",\"client_name\":\"rest_api_publisher\"}",
    "jsonAppAttribute":"{}",
    "applicationUUID":null,
    "tokenType":"DEFAULT"
  }
  ```

- Generate the basic auth header using the clientId and clientSecret. Store the generated base64 value securely for future use. Replace the <BASE64_TOKEN> with this value in the next steps.

  `echo '<CLIENT_ID>:<CLIENT_SECRET>' | base64`{{copy}}

  e.g.:

  `echo '_Wg2sMkl852Jdr8uICj0chCXVaUa:GGdOKRhownFv45AI_6gTG1EImFIa' | base64`

Continue to the next section.
