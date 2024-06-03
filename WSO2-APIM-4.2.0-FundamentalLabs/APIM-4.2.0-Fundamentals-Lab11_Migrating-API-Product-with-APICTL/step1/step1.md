- Start the API Manager using the below command

    - DEV environment

        `sh dev/wso2am-4.2.0/bin/api-manager.sh start`{{exec}}

        Check the logs and wait till server starts.

        `tail -f dev/wso2am-4.2.0/repository/logs/wso2carbon.log`{{exec}}

    - PROD environment

        `sh prod/wso2am-4.2.0/bin/api-manager.sh start`{{exec}}

        Check the logs and wait till server starts.

        `tail -f prod/wso2am-4.2.0/repository/logs/wso2carbon.log`{{exec}}

- Create the API product in DEV environment

    - Go to the DEV Publisher portal and deploy the sample PizzaShack API

        {{TRAFFIC_HOST1_8040}}/publisher

    - Create an API product using the PizzaShackAPI Resources

- Go to the PROD publisher portal and make sure there is no API Product

    {{TRAFFIC_HOST1_8050}}/publisher

Continue to the next section.
