1) update hostname in the config file. This is an optional step needs to be done only in this playground environments.

`bash sethostname.sh`{{execute}}

2) Download the APIM

`wget --user <USERNAME> --ask-password https://product-dist.wso2.com/products/api-manager/3.2.0/eula/wso2am-3.2.0.zip`{{copy}}

3) Extract the pack

`unzip wso2am-3.2.0.zip`{{execute}}

4) Copy the config file

`cp deployment.toml wso2am-3.2.0/repository/conf/deployment.toml`{{execute}}

5) Start the APIM (or IS in other environments)

`sh wso2am-3.2.0/bin/wso2server.sh start`{{execute}}

Check the logs

`tail -f wso2am-3.2.0/repository/logs/wso2carbon.log`{{execute}}

6) Wait till the server starts and log into the dev portal

https://[[HOST_SUBDOMAIN]]-9443-[[KATACODA_HOST]].environments.katacoda.com/devportal

7) Create an application to represent our webapp which we are going to deploy on the tomcat.

8) Generate production keys and allow Code grant. Use the following URL as the callback URL.

https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/pickup-dispatch/oauth2client
