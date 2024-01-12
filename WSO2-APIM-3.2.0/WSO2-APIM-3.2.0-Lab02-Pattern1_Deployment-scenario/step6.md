Make a copy of the configured server

`cp -r apim1/ apim2`{{execute}}

Open the configuration file of the second APIM instance

`vi apim2/wso2am-3.2.0/repository/conf/deployment.toml`{{execute}}

Update the port offset to be able to run both APIM instances on the same machine

```
[server]
offset=1
```
