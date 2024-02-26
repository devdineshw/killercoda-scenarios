- Go to the developer portal, Generate production keys,  subscribe to the api.

- Generate different access tokens for api_user and api_admin users using the below command. Use the clientid, secret generated in the above step

    `curl -k -X POST {{TRAFFIC_HOST1_80}}/oauth2/token -d "grant_type=password&username=<USERNAME>&password=<PASSWORD>" -H "Authorization: Basic <base64encoded(consumerkey:consumersecret)>"`

- Invoke the API using the access token you recieved from the above command

    `curl -X 'GET' '{{TRAFFIC_HOST1_8080}}/pizzashack/1.0.0/menu'   -H 'accept: application/json'   -H 'Authorization: Bearer <ACCESS_TOKEN>`

    `curl -X 'POST' '{{TRAFFIC_HOST1_8080}}/pizzashack/1.0.0/order' -H 'accept: application/json' -H 'Content-Type: application/json' -H 'Authorization: Bearer <ACCESS_TOKEN>' -d '{ "customerName": "WSO2 customer", "delivered": true, "address": "1 WSO2", "pizzaType": "Large", "creditCardNumber": "1234", "quantity": 1, "orderId": "O1234"}'`