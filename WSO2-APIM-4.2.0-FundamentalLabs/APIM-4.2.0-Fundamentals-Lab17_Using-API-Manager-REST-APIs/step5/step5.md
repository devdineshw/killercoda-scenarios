- Generate a token with apim:app_manage and apim:subscribe scopes

  - Invoke the token endpoint with password grant

    `curl -k -d "grant_type=password&username=admin&password=admin&scope=apim:subscribe apim:app_manage" -H "Authorization: Basic <BASE64_TOKEN>" https://localhost:9443/oauth2/token`

    e.g.: 

    `curl -k -d "grant_type=password&username=admin&password=admin&scope=apim:subscribe apim:app_manage" -H "Authorization: Basic cjFUSTFyMkFrVTJNcjVmMjQ5QzIyeDZGVGhrYTpFSkd6U29nakp2VVUwS2tQZTNVV2dRRW5tZUlh" https://localhost:9443/oauth2/token`

  - Extract the access_token value and use for the subsequent API calls

    ```
    {"access_token":"169041a9-14fd-3e7c-b5d2-14aa82729bba","refresh_token":"a49e9e74-cbbb-37db-97de-0bdc74316d49","scope":"apim:subscribe apim:app_manage","token_type":"Bearer",
    "expires_in":3600}
    ```

- Create an Application

  - Create a file with the following payload

    `vi create_application_payload.json`{{exec}}

    ```
    {
      "name": "GoogleDirectionsApp",
      "throttlingPolicy": "Unlimited",
      "description": "GoogleDirectionsAPI App",
      "tokenType": "JWT",
      "status": "APPROVED",
      "subscriptionCount": 0,
      "keys": [],
      "subscriptionScopes": [],
      "owner": "admin",
      "hashEnabled": true
    }
    ```
  - Invoke the REST API. Replace the <access_token> 

    `curl -k -H "Authorization: Bearer <access_token>" -H "Content-Type: application/json" -X POST -d @create_application_payload.json https://localhost:9443/api/am/devportal/v3/applications`

    e.g.:

    `curl -k -H "Authorization: Bearer 169041a9-14fd-3e7c-b5d2-14aa82729bba" -H "Content-Type: application/json" -X POST -d @create_application_payload.json https://localhost:9443/api/am/devportal/v3/applications`

  - Extract the applicationId value for future use

    ```
    {
      "applicationId":"b3560453-2e3e-413e-a42b-edad3522953e",
      "name":"GoogleDirectionsApp",
      ...  
    }
    ```

  - Application should be visible in the developer portal

    {{TRAFFIC_HOST1_80}}/devportal


- Subscribe to API

  - Get the Application ID from the applicatoin list (Optional)

    `curl -k -H "Authorization: Bearer <access_token>" "https://localhost:9443/api/am/devportal/v3/applications"`

    e.g.:

    `curl -k -H "Authorization: Bearer 169041a9-14fd-3e7c-b5d2-14aa82729bba" "https://localhost:9443/api/am/devportal/v3/applications"`


    Get the applicationId from the response

    ```
    {
      "count":2,
      "list":[
        {
          "applicationId":"d7e7c965-6b42-4937-a5f0-8c6dfaac2923",
          "name":"DefaultApplication",
          ....
        },{
          "applicationId":"b3560453-2e3e-413e-a42b-edad3522953e",
          "name":"GoogleDirectionsApp",
          ...
        }
      ],
      "pagination":{
        ...
      }
    }
    ```

  - Get the API ID from the API list (Optional)

    `curl -k -H "Authorization: Bearer <access_token>" "https://localhost:9443/api/am/devportal/v3/apis"`

    e.g.:

    `curl -k -H "Authorization: Bearer 169041a9-14fd-3e7c-b5d2-14aa82729bba" "https://localhost:9443/api/am/devportal/v3/apis"`


    Get the API Id (id) from the response

    ```
    {
      "count":1,
      "list":[
        {
          "id":"b9228a37-9b60-46eb-a908-a72bb56190b7",
          "name":"GoogleDirectionsAPI",
          ...
        }
      ],
      "pagination":{
        ...
      }
    }
    ```

  - Create a file with the following payload. Replace the <api_id> and <application_id>

    `vi subscription_payload.json`{{exec}}

    ```
    {
      "throttlingPolicy": "Unlimited",
      "status": "UNBLOCKED",
      "apiId": "<api_id>",
      "applicationId": "<application_id>"
    }
    ```

  - Invoke the REST API. Replace the <access_token> 

    `curl -k -H "Authorization: Bearer <access_token>" -H "Content-Type: application/json" -X POST  -d @subscription_payload.json "https://localhost:9443/api/am/devportal/v3/subscriptions"`

    e.g.:

    `curl -k -H "Authorization: Bearer 169041a9-14fd-3e7c-b5d2-14aa82729bba" -H "Content-Type: application/json" -X POST  -d @subscription_payload.json "https://localhost:9443/api/am/devportal/v3/subscriptions"`

  - Application should have the subscription in the developer portal

    {{TRAFFIC_HOST1_80}}/devportal


Continue to the next section.