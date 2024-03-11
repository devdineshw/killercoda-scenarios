- Download and extract the apictl tool
    - Download the archive file

        `wget -O apictl-4.2.4-linux-amd64.tar.gz https://github.com/wso2/product-apim-tooling/releases/download/v4.2.4/apictl-4.2.4-linux-amd64.tar.gz`{{exec}}

    - Extract to a prefered location
    
        `tar -xvf apictl-4.2.4-linux-amd64.tar.gz -C /var/lib/`{{exec}}

    - Set the update the environment variables

        `echo "export PATH='/var/lib/apictl/:$PATH'" >> /etc/profile && source /etc/profile`{{exec}}

- Add environments

  - Add the DEV APIM instance to the APICTL tool

    `apictl add env dev --apim https://localhost:9443`{{exec}}

  - Add the PROD APIM instance to the APICTL tool

    `apictl add env prod --apim https://localhost:9444`{{exec}}

    


Continue to the next section.