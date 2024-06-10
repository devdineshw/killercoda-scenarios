- Configure the Gateway

  - Open the api manager configuration file

    `vi apim1/wso2am-4.2.0/repository/conf/deployment.toml`{{exec}}

  - Update the configuration to match with following

    ```
    [apim.analytics]
    enable = true
    config_endpoint = "https://analytics-event-auth.choreo.dev/auth/v1"
    auth_token = "<token(key) generated from the choreo cloud>"
    ```

- Start the API Manager using the below command

    `sh apim1/wso2am-4.2.0/bin/api-manager.sh start`{{exec}}

    Wait few seconds and check the logs. Wait till the server starts.

    `tail -f apim1/wso2am-4.2.0/repository/logs/wso2carbon.log`{{exec}}


Please note that, in a secured environment, make sure to allow outgoing traffic to the following endpoints from the gateway nodes.

```
Host                                            Port  Protocol
analytics-prod-incoming.servicebus.windows.net  5671  AMQP
analytics-prod-incoming.servicebus.windows.net  5672  AMQP
analytics-event-auth.choreo.dev	                443	  HTTPS
```


Continue to the next section.
