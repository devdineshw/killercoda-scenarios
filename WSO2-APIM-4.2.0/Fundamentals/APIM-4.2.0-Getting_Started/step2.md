Download the WSO2 APIM binary.
NOTE: You could download the WSO2 product binary files from the WSO2 website.

- Use the following command to download the WSO2 API Manager binary file. Replace <USERNAME> with your WSO2 account username (email address)

`wget --user <USERNAME> --ask-password https://product-dist.wso2.com/products/api-manager/3.2.0/eula/wso2am-3.2.0.zip`

- Create a directory for the API Manager installation

`mkdir apim1`{{execute}}

- Extract the WSO2 APIM binary to the new folder

`unzip wso2am-3.2.0.zip -d apim1/`{{execute}}