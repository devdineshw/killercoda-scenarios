Download the WSO2 Micro Gateway

`wget --user <USERNAME> --ask-password https://product-dist.wso2.com/products/micro-gateway/toolkit/3.2.0/eula/wso2am-micro-gw-toolkit-linux-3.2.0.zip`{{copy}}

`wget --user <USERNAME> --ask-password https://product-dist.wso2.com/products/micro-gateway/runtime/3.2.3/wso2am-micro-gw-linux-3.2.3.zip`{{copy}}

Create a directory for Micro Gateway runtime and toolkit

`mkdir wso2mg`{{execute}}

Extract the zip files

`unzip wso2am-micro-gw-toolkit-linux-3.2.0.zip -d wso2mg/`{{execute}}

`unzip wso2am-micro-gw-linux-3.2.3.zip -d wso2mg/`{{execute}}

Set the PATH Environment variable

`export PATH="/root/wso2mg/wso2am-micro-gw-toolkit-linux-3.2.0/bin/:/root/wso2mg/wso2am-micro-gw-linux-3.2.3/bin/:$PATH"`{{execute}}

Update the configuration

Open the micro gateway config file

`vi wso2mg/wso2am-micro-gw-linux-3.2.3/conf/micro-gw.conf`{{execute}}

update the analytics section and save

```
[analytics.fileUpload]
    enable=true
    uploadingTimeSpanInMillis=600000
    uploadingEndpoint="https://localhost:9444/analytics/v1.0/usage/upload-file"
    rotatingPeriod=60000
    taskUploadFiles=true
    username="admin"
    password="admin"
```
