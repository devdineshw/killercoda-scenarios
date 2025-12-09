- Start the API Manager using the below command

    `sh apim1/wso2am-4.5.0/bin/api-manager.sh start`{{exec}}

    Check the logs and wait till server starts.

    `tail -f apim1/wso2am-4.5.0/repository/logs/wso2carbon.log`{{exec}}

- Go to the Publisher portal and deploy the sample PizzaShack API

    {{TRAFFIC_HOST1_80}}/publisher

- Go to the API DevPortal and check the current UI

    {{TRAFFIC_HOST1_80}}/devportal

Continue to the next section.
