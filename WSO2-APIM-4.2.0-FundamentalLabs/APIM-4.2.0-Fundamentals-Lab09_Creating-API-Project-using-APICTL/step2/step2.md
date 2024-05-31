- Download and configure the API CTL Tool

  - Download the APICTL binary from the folowing command. This will download the Ubunutu supported distribution. If you want to download a different OS supported version download it from <a href="https://apim.docs.wso2.com/en/4.2.0/install-and-setup/setup/api-controller/getting-started-with-wso2-api-controller/">here</a>

    `wget -O apictl-4.2.4-linux-amd64.tar.gz https://github.com/wso2/product-apim-tooling/releases/download/v4.2.4/apictl-4.2.4-linux-amd64.tar.gz`{{exec}}
  
  - Extract the archive file.

    `tar -xvf apictl-4.2.4-linux-amd64.tar.gz`{{exec}}

  - Add the apictl root location to PATH environment variable

    `export PATH=/root/apictl/:$PATH`{{exec}}

  - Check whether APICTL tool works. Execute the apictl help command

    `apictl -h`{{exec}}

- Register the API Manager environment with local APICTL tool

  - Run the 'add env' sub command to register an API Manager environment with the API CTL tool. 
  
    `apictl add env dev --apim https://localhost:9443`{{exec}}

    Once executed you should see a response like below.

    ```
    Successfully added environment 'dev'
    ```

    'dev' is the name we will be using to refer to this specific environment, you could register any number of environments like this with different environment names.

    This is the simplest way of registering a all-in-one API Manager environment. You could execute 'apictl add env --help' to see other options of adding complex API Manager environments

Continue to the next section.
