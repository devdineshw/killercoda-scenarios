- Generate an access token

`curl -k --location 'https://localhost:9095/oauth2/token' --header 'Host: idp.am.wso2.com' --header 'Authorization: Basic NDVmMWM1YzgtYTkyZS0xMWVkLWFmYTEtMDI0MmFjMTIwMDAyOjRmYmQ2MmVjLWE5MmUtMTFlZC1hZmExLTAyNDJhYzEyMDAwMg==' --header 'Content-Type: application/x-www-form-urlencoded' --data-urlencode 'grant_type=client_credentials'`{{execute}}

- Invoke the API

`curl -k --location 'https://localhost:9095/spring/1.0.0/hello' --header 'Host: spring.gw.wso2.com' --header 'Authorization: Bearer <ACCESS_TOKEN>'`{{copy}}