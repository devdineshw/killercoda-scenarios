Start the first APIM instance

`sh apim1/wso2am-3.2.0/bin/wso2server.sh start`{{execute}}

Check the logs

`tail -f apim1/wso2am-3.2.0/repository/logs/wso2carbon.log`{{execute}}


Access the UIs

https://[[HOST_SUBDOMAIN]]-443-[[KATACODA_HOST]].environments.katacoda.com/carbon

https://[[HOST_SUBDOMAIN]]-443-[[KATACODA_HOST]].environments.katacoda.com/publisher

https://[[HOST_SUBDOMAIN]]-443-[[KATACODA_HOST]].environments.katacoda.com/devportal

Stop the first APIM instance

`sh apim1/wso2am-3.2.0/bin/wso2server.sh stop`{{execute}}

Make sure the first instance is stoped by checking the logs again

Start the second APIM instance

`sh apim2/wso2am-3.2.0/bin/wso2server.sh start`{{execute}}

Check the logs

`tail -f apim2/wso2am-3.2.0/repository/logs/wso2carbon.log`{{execute}}

Check the UIs again
