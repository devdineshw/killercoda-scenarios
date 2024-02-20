
- Install the prerequisites. In this environment all the tools are pre-installed. You could check the availability

    `git --version`{{execute}}

    `docker -v`{{execute}}

    `docker-compose -v`{{execute}}

- Login into the WSO2 docker registry. Enter the WSO2 username and password.

    `docker login docker.wso2.com`{{execute}}

- Clone the sample docker files from the WSO2 GIT repository and checkout the related version

    `git clone https://github.com/wso2/docker-apim`{{execute}}

    `cd docker-apim`{{execute}}

    `git checkout tags/v4.2.0.1`{{execute}}

    [Optional] Update the following configarations (Required to do only in this playground environment)

- Update the hostname

    `vi docker-compose/apim-with-analytics/conf/apim/repository/conf/deployment.toml`{{execute}}

    Copy the hostname from the below URL and update the hostname under the [server] section
    {{TRAFFIC_HOST1_80}}

    ```
    [transport.https.properties]
    proxyPort = 443
    ```{{copy}}

Continue to the next section.
