- Go to the API developer portal 

  {{TRAFFIC_HOST1_80}}/devportal

- Click the 'PizzaShackAPI' to open the API details page.

- Click 'Try Out' from the left menu to open the API testing page.

  Following are the options you have on the try out page.

  - Security Type: Token type to be used for the testing
  - Application: Application to be used for the testing
  - KeyType: 'Production' or 'Sandbox' to use
  - Access Token: Access token to send along with the request.
  - Gateway: Gateway environment to send the request, incase if the API is deployed to more than one gateway.

  You will notice that, by default, the 'DefaultApplication' and 'Default' is selected as the application and gateway environment respectively. Keep the default values as it is.

- Click 'Get Test Key' button next to the 'Access Token' text box to generate a new access token.
- Scroll down and click the API resource to be tested. You could select the 'GET /menu' for this lab. Resource area will be expanded.
- Click the 'Try it out' button to open the API invocation area. 

- Click the 'Execute' button.

  You could enter the parameter values or payload body before executing the API (see the other resources). Since this is a GET operation which doesn't have any parameters, we can execute it directly.

  You will see a curl command, the request URL and the API response after the initial execution. 

- Execute the API from other client applications.

  - Curl

    curl is a command line tool available in Linux or Mac. You could copy and paste the curl command from the dev portal try out page and execute it. this command consist of the important components such as 
      - API URL
      - Authorization header
      - Request parameter or payload body
      - Other additional headers such as Content-Type

    ```
    curl -H "Authorization: Bearer XXXXXXXX" -v https://localhost:8243/pizzashack/1.0.0/menu
    ```

  - Postman

    You could click the 'Postman Collection' button, just below the Gateway environment dropdown, to download the postman collection for this API. After downloading the postman collection, you could import it to postman, update the base URL, set the Authorization header and execute the resources.

Continue to the next section.