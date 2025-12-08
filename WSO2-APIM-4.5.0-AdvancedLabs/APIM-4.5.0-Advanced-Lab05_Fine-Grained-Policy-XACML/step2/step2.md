- Download and copy the entitlement jar to API Manager
    `wget -O entitlementMediator.jar https://github.com/CrowleyRajapakse/XACML-APIManager/blob/master/target/entitlement-1.0-SNAPSHOT.jar`{{exec}}
    
    `cp entitlementMediator.jar /root/apim1/wso2am-4.5.0/repository/components/lib/`{{exec}}

- Start the API Manager using the below command

    `sh apim1/wso2am-4.5.0/bin/api-manager.sh start`{{exec}}

    Check the logs and wait till server starts.

    `tail -f apim1/wso2am-4.5.0/repository/logs/wso2carbon.log`{{exec}}

- Go to the APIM admin portal and map newly created role as a subscriber role

    {{TRAFFIC_HOST1_80}}/admin

- Go to the API Publisher

    {{TRAFFIC_HOST1_80}}/publisher

- Create the sample Pizza shack API and continue the steps from 11

    https://apim.docs.wso2.com/en/4.5.0/manage-apis/design/api-security/authorization/role-based-access-control-using-xacml/#enabling-role-based-access-control

Continue to the next section.