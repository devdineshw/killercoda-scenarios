- Download and extract the apictl tool
    - Download the archive file

        `wget -O apictl-4.5.0-linux-amd64.tar.gz https://product-dist.wso2.com/downloads/api-manager/cli/4.5.0/apictl-4.5.0-linux-amd64.tar.gz`{{exec}}

    - Extract to a prefered location
    
        `tar -xvf apictl-4.5.0-linux-amd64.tar.gz -C /var/lib/`{{exec}}

    - Set the update the environment variables

        `echo "export PATH='/var/lib/apictl/:$PATH'" >> /etc/profile && source /etc/profile`{{exec}}

- Add environments

  - Add the DEV APIM instance to the APICTL tool

    `apictl add env dev --apim https://localhost:9443`{{exec}}

  - Add the PROD APIM instance to the APICTL tool

    `apictl add env prod --apim https://localhost:9444`{{exec}}

    


Continue to the next section.