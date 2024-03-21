- Start the API Manager using the below command

    `sh apim1/wso2am-4.2.0/bin/api-manager.sh start`{{exec}}

    Wait few seconds and check the logs. Wait till the server starts.

    `tail -f apim1/wso2am-4.2.0/repository/logs/wso2carbon.log`{{exec}}

- Publish the sample 'PizzaShack' API
  
  - Go to the API Publisher portal and login in with 'admin' user. 

    {{TRAFFIC_HOST1_80}}/publisher

  - Click 'Rest API' and then select 'Deploy Sample API'

- Logout from the portals

  If you are still logged in as the 'Admin' user to any of the portals, click the username 'Admin' in the top right corner and then click 'logout'.

Continue to the next section.
