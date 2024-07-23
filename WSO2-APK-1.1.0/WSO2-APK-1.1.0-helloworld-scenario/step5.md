- Generate an access token

`curl -k --location 'https://idp.am.wso2.com:9095/oauth2/token' --header 'Host: idp.am.wso2.com' --header 'Authorization: Basic NDVmMWM1YzgtYTkyZS0xMWVkLWFmYTEtMDI0MmFjMTIwMDAyOjRmYmQ2MmVjLWE5MmUtMTFlZC1hZmExLTAyNDJhYzEyMDAwMg==' --header 'Content-Type: application/x-www-form-urlencoded' --data-urlencode 'grant_type=client_credentials'`{{execute}}

- Invoke the API. Please copy the following command into command line and update the <ACCESS_TOKEN> with the access token from response of previous step, then execute.

`curl -k --location 'https://default.gw.wso2.com:9095/spring/1.0.0/hello' --header 'Host: default.gw.wso2.com' --header 'Authorization: Bearer <ACCESS_TOKEN>'`{{copy}}