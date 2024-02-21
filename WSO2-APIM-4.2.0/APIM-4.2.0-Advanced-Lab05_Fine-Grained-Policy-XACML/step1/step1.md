- Download and copy the entitlement jar to API Manager
    `wget -o entitlement-1.0-SNAPSHOT.jar https://github.com/nadeesha5814/XACML-APIManager/blob/master/target/entitlement-1.0-SNAPSHOT.jar`{{exec}}

    `cp mysql-connector-java-8.0.27.jar /root/apim1/wso2am-4.2.0/repository/components/lib/`{{exec}}

- Start the API Manager using the below command

    `sh apim1/wso2am-4.2.0/bin/api-manager.sh start`{{exec}}

    Check the logs and wait till server starts.

    `tail -f apim1/wso2am-4.2.0/repository/logs/wso2carbon.log`{{exec}}

- Start the Identity server using the below command

    `sh is1/wso2is-6.1.0/bin/wso2server.sh start`{{exec}}

    Check the logs and wait till server starts.

    `tail -f is1/wso2is-6.1.0/repository/logs/wso2carbon.log`{{exec}}

Continue to the next section.
