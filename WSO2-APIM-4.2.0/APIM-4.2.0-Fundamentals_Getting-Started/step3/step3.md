- Start the WSO2 API Manager

`sh apim1/wso2am-4.2.0/bin/api-manager.sh start`{{execute}}

- Check the logs

`tail -f apim1/wso2am-4.2.0/repository/logs/wso2carbon.log`{{execute}}

 **_NOTE:_**: Prese Ctrl+C to exit from the logs

- Access the UIs. you could deploy the sample API

{{TRAFFIC_HOST1_80}}/publisher

{{TRAFFIC_HOST1_80}}/devportal

{{TRAFFIC_HOST1_80}}/admin

{{TRAFFIC_HOST1_80}}/carbon

- Stop the APIM instance

`sh apim1/wso2am-4.2.0/bin/api-manager.sh stop`{{execute}}

Make sure the instance is stoped by checking the logs again

`tail -f apim1/wso2am-4.2.0/repository/logs/wso2carbon.log`{{execute}}
