1) update hostname in the config file. This is an optional step needs to be done only in this playground environments.

`bash sethostname.sh`{{execute}}

2) Download the APIM

`wget --user <USERNAME> --ask-password https://product-dist.wso2.com/products/api-manager/3.2.0/eula/wso2am-3.2.0.zip`{{copy}}

Extract the pack

`unzip wso2am-3.2.0.zip`{{execute}}

Copy the config file

`cp deployment.toml wso2am-3.2.0/repository/conf/deployment.toml`{{execute}}

Start the service

`sh wso2am-3.2.0/bin/wso2server.sh`{{execute}}

Wait till the server starts
