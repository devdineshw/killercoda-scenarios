Start the instances

Analytics worker

`sh apim/wso2am-analytics-3.2.0/bin/worker.sh start`{{execute}}

`tail -f apim/wso2am-analytics-3.2.0/wso2/worker/logs/carbon.log`{{execute}}

Analytics dashboard

`sh apim/wso2am-analytics-3.2.0/bin/dashboard.sh start`{{execute}}

`tail -f apim/wso2am-analytics-3.2.0/wso2/dashboard/logs/carbon.log`{{execute}}

WSO2 APIM 3.2.0

`sh apim/wso2am-3.2.0/bin/wso2server.sh start`{{execute}}

`tail -f apim/wso2am-3.2.0/repository/logs/wso2carbon.log`{{execute}}

Access the URLs and verify the setup


https://[[HOST_SUBDOMAIN]]-9443-[[KATACODA_HOST]].environments.katacoda.com/carbon

https://[[HOST_SUBDOMAIN]]-9443-[[KATACODA_HOST]].environments.katacoda.com/publisher

https://[[HOST_SUBDOMAIN]]-9443-[[KATACODA_HOST]].environments.katacoda.com/devportal

https://[[HOST_SUBDOMAIN]]-9443-[[KATACODA_HOST]].environments.katacoda.com/admin

https://[[HOST_SUBDOMAIN]]-9643-[[KATACODA_HOST]].environments.katacoda.com/analytics-dashboard
