Copy the jar file to APIM

`cp org.wso2.carbon.test-1.0-SNAPSHOT.jar wso2am-3.2.0/repository/components/lib/org.wso2.carbon.test-1.0-SNAPSHOT.jar`{{execute}}


Update the velocity template file (in the publisher profile if it is distributed setup)

`vi wso2am-3.2.0/repository/resources/api_templates/velocity_template.xml`{{execute}}

Add the following section
```
<handler class="org.wso2.carbon.test.CustomHandler" />
```

Check the following documentation for more details

https://apim.docs.wso2.com/en/3.1.0/develop/extending-api-manager/extending-gateway/writing-custom-handlers/#engaging-the-custom-handler

Start the service

`sh wso2am-3.2.0/bin/wso2server.sh start`{{execute}}

Check the logs

`tail -f wso2am-3.2.0/repository/logs/wso2carbon.log`{{execute}}

Wait till the server starts
