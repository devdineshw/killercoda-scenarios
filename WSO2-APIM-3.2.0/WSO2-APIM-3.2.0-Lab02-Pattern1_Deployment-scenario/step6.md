1) Make a copy of the configured server

`cp -r apim1/ apim2`{{execute}}

2) Open the configuration file of the second APIM instance

`vi apim2/wso2am-3.2.0/repository/conf/deployment.toml`{{execute}}

3) Update the port offset to be able to run both APIM instances on the same machine

```
[server]

offset=1
```
