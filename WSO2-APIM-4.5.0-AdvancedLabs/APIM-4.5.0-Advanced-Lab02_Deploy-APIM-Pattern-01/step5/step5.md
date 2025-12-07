- Start the first APIM instance

  `sh apim1/wso2am-4.5.0/bin/api-manager.sh start`{{execute}}

  - Check the logs

    `tail -f apim1/wso2am-4.5.0/repository/logs/wso2carbon.log`{{execute}}

    Prese Ctrl+C to exit from the logs

- Start the Second APIM instance

  `sh apim2/wso2am-4.5.0/bin/api-manager.sh start`{{execute}}

  - Check the logs

    `tail -f apim2/wso2am-4.5.0/repository/logs/wso2carbon.log`{{execute}}

- Access the UIs. you could deploy the sample API

  {{TRAFFIC_HOST1_80}}/publisher

  {{TRAFFIC_HOST1_80}}/devportal

- You could invoke the API multiple times to see the request coming to both nodes randomly.

- Stop the first APIM instance

  `sh apim1/wso2am-4.5.0/bin/api-manager.sh stop`{{execute}}

  Make sure the first instance is stoped by checking the logs again

- Check the logs

  `tail -f apim2/wso2am-4.5.0/repository/logs/wso2carbon.log`{{execute}}

  You should be able to see there are some errors on APIM 2 logs related to throttling event publisher, because the APIM1 is not avaialbe.

- Check the UIs again. UI should be working even the APIM 1 is not available.