- Download and copy the entitlement jar to API Manager
    `wget -o entitlementMediator.jar https://github.com/devdineshw/resources/raw/main/lib/wso2/entitlementMediator.jar?download=true`{{exec}}

    `cp entitlementMediator.jar /root/apim1/wso2am-4.2.0/repository/components/lib/`{{exec}}

- Start the API Manager using the below command

    `sh apim1/wso2am-4.2.0/bin/api-manager.sh start`{{exec}}

    Check the logs and wait till server starts.

    `tail -f apim1/wso2am-4.2.0/repository/logs/wso2carbon.log`{{exec}}

- Go to the API Publisher

    {{TRAFFIC_HOST1_80}}/publisher

- Create the sample Pizza shack API and continue the steps from 11

    https://apim.docs.wso2.com/en/latest/design/api-security/authorization/role-based-access-control-using-xacml/#enabling-role-based-access-control

Continue to the next section.