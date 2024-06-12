- Generate a token with apim:api_create scope

  - Invoke the token endpoint with password grant

    `curl -k -d "grant_type=password&username=admin&password=admin&scope=apim:api_create" -H "Authorization: Basic <BASE64_TOKEN>" https://localhost:9443/oauth2/token`

    e.g.: 

    `curl -k -d "grant_type=password&username=admin&password=admin&scope=apim:api_create" -H "Authorization: Basic cjFUSTFyMkFrVTJNcjVmMjQ5QzIyeDZGVGhrYTpFSkd6U29nakp2VVUwS2tQZTNVV2dRRW5tZUlh" https://localhost:9443/oauth2/token`

  - Extract the access_token value

    ```
    {"access_token":"169041a9-14fd-3e7c-b5d2-14aa82729bba","refresh_token":"a49e9e74-cbbb-37db-97de-0bdc74316d49","scope":"apim:api_create","token_type":"Bearer",
    "expires_in":3600}
    ```

- Create an API

  - Create a file with the following payload

    `vi create_api_payload.json`{{exec}}

    ```
    {
      "name": "GoogleDirectionsAPI",
      "version": "Beta",
      "context": "/googledirections",
      "policies": [
          "Unlimited"
      ],
      "endpointConfig": {
          "endpoint_type": "http",
          "sandbox_endpoints": {
              "url": "https://run.mocky.io/v3/91473406-042f-450d-ae95-544b0ac0203e"
          },
          "production_endpoints": {
              "url": "https://run.mocky.io/v3/91473406-042f-450d-ae95-544b0ac0203e"
          }
      }
    }
    ```
  - Invoke the REST API. Replace the <access_token>

    `curl -k -H "Authorization: Bearer <access_token>" -H "Content-Type: application/json" -X POST -d @create_api_payload.json https://localhost:9443/api/am/publisher/v4/apis`

    e.g.:

    `curl -k -H "Authorization: Bearer 169041a9-14fd-3e7c-b5d2-14aa82729bba" -H "Content-Type: application/json" -X POST -d @create_api_payload.json https://localhost:9443/api/am/publisher/v4/apis`

  - Obtain the API ID (id) value from the response for future use.

    ```
    {
      "id":"c10a952d-9648-4160-96fe-54a96f5c7080",
      "name":"GoogleDirectionsAPI",
      "description":null,
      ....
    }
    ```

  - Go to the API Publisher and check the availability of new API, which should be in the CREATED state

    {{TRAFFIC_HOST1_80}}/publisher

- Create an API revision

   - Create a file with the following payload

    `vi create_api_revision_payload.json`{{exec}}

    ```
    {
      "description": "API Revision 1"
    }
    ```

  - Invoke the REST API. Replace the <access_token> and <api_id>

    `curl -k -X POST -H "Authorization: Bearer <access_token>" -H "Content-Type: application/json" -d @create_api_revision_payload.json "https://localhost:9443/api/am/publisher/v4/apis/<api_id>/revisions"`

    e.g.:

    `curl -k -X POST -H "Authorization: Bearer 169041a9-14fd-3e7c-b5d2-14aa82729bba" -H "Content-Type: application/json" -d @create_api_revision_payload.json "https://localhost:9443/api/am/publisher/v4/apis/c10a952d-9648-4160-96fe-54a96f5c7080/revisions"`

  - Obtain the revision ID (id) value from the response for future use.

    ```
    {
      "displayName":"Revision 1",
      "id":"a83434fc-3309-4583-a781-2c67f18861c2",
      "description":"API Revision 1",
      ...
    }
    ```

  - Go to the API Publisher > GoogleDirectionsAPI > Deployments page to check the new API Revision

    {{TRAFFIC_HOST1_80}}/publisher

- Deploy the API revision

   - Create a file with the following payload

    `vi api_deploy_payload.json`{{exec}}

    ```
    [
      {
        "name": "Default",
        "vhost": "localhost",
        "displayOnDevportal": true
      }
    ]
    ```

  - Invoke the REST API. Replace the <access_token>, <api_id> and <revision_id>

    `curl -k -X POST -H "Authorization: Bearer <access_token>"  -H "Content-Type:application/json" -d @api_deploy_payload.json "https://localhost:9443/api/am/publisher/v4/apis/<api_id>/deploy-revision?revisionId=<revision_id>"`

    e.g.:

    `curl -k -X POST -H "Authorization: Bearer 169041a9-14fd-3e7c-b5d2-14aa82729bba"  -H "Content-Type:application/json" -d @api_deploy_payload.json "https://localhost:9443/api/am/publisher/v4/apis/c10a952d-9648-4160-96fe-54a96f5c7080/deploy-revision?revisionId=a83434fc-3309-4583-a781-2c67f18861c2"`

  - Go to the API Publisher > GoogleDirectionsAPI > Deployments page to check the deployment

    {{TRAFFIC_HOST1_80}}/publisher

Continue to the next section.