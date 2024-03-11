- Download and extract the WSO2 Micro Integrator
    
    - Download the archive file

      `wget -O /root/wso2mi-4.2.0.zip https://github.com/devdineshw/resources/raw/main/binaries/WSO2/MI/4.2.0/wso2mi-4.2.0.zip?download=true`{{exec}}

    - Create a directory and extract the MI
    
      `mkdir /root/mi/`{{exec}}

    - Set the update the environment variables

      `unzip /root/wso2mi-4.2.0.zip -d /root/mi/`{{exec}}
     
- Configure the micro integrator

    - Open the deployment.toml

        `vi /root/mi/wso2mi-4.2.0/conf/deployment.toml`{{exec}}

    - Enable the service catalog feature and point to the API Manager

        ```
        [[service_catalog]]
        apim_host = "https://localhost:9443"
        enable = true
        username = "admin"
        password = "admin"
        ```{{copy}}

- Start the micro integrator

    `sh /root/mi/wso2mi-4.2.0/bin/integrator.sh start`{{execute}}

    Check the logs and wait till it starts

    `tail -f /root/mi/wso2mi-4.2.0/repository/logs/wso2carbon.log`{{exec}}
    
Continue to the next section.