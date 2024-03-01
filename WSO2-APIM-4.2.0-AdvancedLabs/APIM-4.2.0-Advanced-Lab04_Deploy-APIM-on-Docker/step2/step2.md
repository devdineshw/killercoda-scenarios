- Update the configuration

    - Move to the relevnt directory

        `cd docker-compose/apim-with-analytics/`{{execute}}

    - [Optional] Update the following configarations (Required to do only in this playground environment)

        - Update the required APIM configurations

            `vi conf/apim/repository/conf/deployment.toml`{{execute}}

            > [Important] Disable analytics by commenting out the analytics configuration or set a auth_token to configure the analytics.
            >
            > ```
            > #[apim.analytics]
            > #enable = false
            > #config_endpoint = "https://analytics-event-auth.choreo.dev/auth/v1"
            > #auth_token = "<on-prem-key>"
            > ```


- Choose the docker registry to use

    - If you have WSO2 credentials, execute the following command and login into the WSO2 docker registry. Enter the WSO2 username and password. This login session will be used during the docker-compose to fetch the image.

        `docker login docker.wso2.com`{{execute}}

    - If you don't have WSO2 credentials, update the image name

        - Open the Dockerfile

            `vi dockerfiles/apim/Dockerfile`{{exec}}
        - Update the base image to use the public image from docker hub

            ```
            FROM wso2am/wso2am:4.2.0-alpine
            ```{{copy}}

- Start the setup

    `docker-compose up --build`{{execute}}

    Incase if you face a problem while starting the APIM container, please try stop (Ctrl+c) and starting the setup using the following command (without building the images again)
    
    `docker-compose up`{{exec}}
    
    ```
    ERROR: for api-manager  Container "xxxxxxxxxxx" is unhealthy.
    ERROR: Encountered errors while bringing up the project.
    ```

    OR

    ```
    ERROR - DefaultRealm nullType class java.lang.reflect.InvocationTargetException
    ```


Once all the containers are up, continue to the next section.