- Generate a token with apim:api_publish scope

  - Invoke the token endpoint with password grant

    `curl -k -d "grant_type=password&username=admin&password=admin&scope=apim:api_publish" -H "Authorization: Basic <BASE64_TOKEN>" https://localhost:9443/oauth2/token`

    e.g.: 

    `curl -k -d "grant_type=password&username=admin&password=admin&scope=apim:api_publish" -H "Authorization: Basic cjFUSTFyMkFrVTJNcjVmMjQ5QzIyeDZGVGhrYTpFSkd6U29nakp2VVUwS2tQZTNVV2dRRW5tZUlh" https://localhost:9443/oauth2/token`

  - Extract the access_token value

    ```
    {"access_token":"169041a9-14fd-3e7c-b5d2-14aa82729bba","refresh_token":"a49e9e74-cbbb-37db-97de-0bdc74316d49","scope":"apim:api_publish","token_type":"Bearer",
    "expires_in":3600}
    ```

- Invoke the Publish API. Replace the <access_token>, <api_id>

  `curl -k -H "Authorization: Bearer <access_token>" -X POST "https://localhost:9443/api/am/publisher/v4/apis/change-lifecycle?apiId=<api_id>&action=Publish"`

  e.g.:

  `curl -k -H "Authorization: Bearer 169041a9-14fd-3e7c-b5d2-14aa82729bba" -X POST "https://localhost:9443/api/am/publisher/v4/apis/change-lifecycle?apiId=65e0b5e3-2d02-47ce-84e4-5930e2d7cd9c&action=Publish"`


- Go to the Publisher portal and check the API state

    {{TRAFFIC_HOST1_80}}/publisher

  API should be visible in the developer portal

    {{TRAFFIC_HOST1_80}}/devportal

Continue to the next section.