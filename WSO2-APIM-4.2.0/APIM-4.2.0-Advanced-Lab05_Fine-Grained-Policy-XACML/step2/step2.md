- Download and copy the entitlement jar to API Manager
    `wget -o entitlement-1.0-SNAPSHOT.jar https://github.com/nadeesha5814/XACML-APIManager/blob/master/target/entitlement-1.0-SNAPSHOT.jar`{{exec}}

    `cp entitlement-1.0-SNAPSHOT.jar /root/apim1/wso2am-4.2.0/repository/components/lib/`{{exec}}

- Start the API Manager using the below command

    `sh apim1/wso2am-4.2.0/bin/api-manager.sh start`{{exec}}

    Check the logs and wait till server starts.

    `tail -f apim1/wso2am-4.2.0/repository/logs/wso2carbon.log`{{exec}}

- Go to the API Publisher

    {{TRAFFIC_HOST1_80}}/publisher

- Create the sample Pizza shack API and continue the steps from 11

    https://apim.docs.wso2.com/en/latest/design/api-security/authorization/role-based-access-control-using-xacml/#enabling-role-based-access-control

Continue to the next section.