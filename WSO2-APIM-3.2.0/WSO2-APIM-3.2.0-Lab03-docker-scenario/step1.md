
1) Install the prerequisites. 

In this environment all the tools are pre-installed. You could check the availability

`git --version`{{execute}}

`docker -v`{{execute}}

`docker-compose -v`{{execute}}

2) Login into the WSO2 docker registry. Enter the WSO2 username and password.

`docker login docker.wso2.com`{{execute}}

3) Clone the sample docker files from the WSO2 GIT repository and checkout the related version

`git clone https://github.com/wso2/docker-apim`{{execute}}

`cd docker-apim`{{execute}}

`git checkout tags/v3.2.0.1`{{execute}}

[Optional] Update the following configarations (Required to do only in this playground environment)

4) Update the hostname

`vi docker-compose/apim-with-analytics/conf/apim/repository/conf/deployment.toml`{{execute}}

```
[server]
hostname = "[[HOST_SUBDOMAIN]]-9443-[[KATACODA_HOST]].environments.katacoda.com"

[transport.https.properties]
proxyPort = 443
```

