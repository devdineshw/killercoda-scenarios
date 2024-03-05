- Configure the pre-requisites
    - Install Jenkins
        `apt install jq`

    - Download and extract the apictl tool

        `wget -O apictl-4.2.4-linux-amd64.tar.gz https://github.com/wso2/product-apim-tooling/releases/download/v4.2.4/apictl-4.2.4-linux-amd64.tar.gz`{{exec}}

        `tar -xvf apictl-4.2.4-linux-amd64.tar.gz`{{exec}}

        `echo "export PATH='/root/apictl/bin/;$PATH'" >> /etc/profile && source /etc/profile`{{exec}}

Continue to the next section.
