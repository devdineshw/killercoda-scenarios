- Start the API Manager using the below command

    - DEV environment

        `sh dev/wso2am-4.2.0/bin/api-manager.sh start`{{exec}}

        Check the logs and wait till server starts.

        `tail -f dev/wso2am-4.2.0/repository/logs/wso2carbon.log`{{exec}}

    - PROD environment

        `sh prod/wso2am-4.2.0/bin/api-manager.sh start`{{exec}}

        Check the logs and wait till server starts.

        `tail -f prod/wso2am-4.2.0/repository/logs/wso2carbon.log`{{exec}}

- Go to the DEV Publisher portal and deploy the sample PizzaShack API

    {{TRAFFIC_HOST1_8180}}/publisher

Continue to the next section.
