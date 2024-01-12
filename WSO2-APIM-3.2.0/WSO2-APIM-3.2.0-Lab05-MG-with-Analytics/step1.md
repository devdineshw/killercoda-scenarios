Download the WSO2 products

`wget --user <USERNAME> --ask-password https://product-dist.wso2.com/products/api-manager/3.2.0/eula/wso2am-3.2.0.zip`{{copy}}

`wget --user <USERNAME> --ask-password https://product-dist.wso2.com/products/api-manager/3.2.0/eula/wso2am-analytics-3.2.0.zip`{{copy}}

Create a directory

`mkdir apim`{{execute}}

Extract the WSO2 APIM binary to the new folder

`unzip wso2am-3.2.0.zip -d apim/`{{execute}}

`unzip wso2am-analytics-3.2.0.zip -d apim/`{{execute}}

Download the MySQL JDBC Driver

`wget https://repo1.maven.org/maven2/mysql/mysql-connector-java/8.0.27/mysql-connector-java-8.0.27.jar`{{execute}}

