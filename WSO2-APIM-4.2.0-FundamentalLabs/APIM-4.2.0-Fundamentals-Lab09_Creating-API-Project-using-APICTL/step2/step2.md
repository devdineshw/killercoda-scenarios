- Download and configure the API CTL Tool

  - Download the APICTL binary from the folowing command. This will download the Ubunutu supported distribution. If you want to download a different OS supported version download it from <a href="https://apim.docs.wso2.com/en/4.2.0/install-and-setup/setup/api-controller/getting-started-with-wso2-api-controller/">here</a>

    `wget -O apictl-4.2.4-linux-amd64.tar.gz https://github.com/wso2/product-apim-tooling/releases/download/v4.2.4/apictl-4.2.4-linux-amd64.tar.gz`{{exec}}
  
  - Extract the archive file.

    `tar -xvf apictl-4.2.4-linux-amd64.tar.gz`{{exec}}

  - Add the apictl location to PATH environment variable

    `export PATH=/home/root/apictl/:$PATH`{{exec}}

Continue to the next section.
