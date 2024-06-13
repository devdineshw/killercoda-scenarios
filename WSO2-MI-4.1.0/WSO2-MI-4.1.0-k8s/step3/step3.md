- Download and configure the API CTL Tool

  - Move to the root directory

    `cd /root`{{exec}}

  - Download the APICTL binary from the folowing command. This will download the Ubuntu supported distribution. If you want to download a different OS supported version download it from <a href="https://apim.docs.wso2.com/en/4.1.0/install-and-setup/setup/api-controller/getting-started-with-wso2-api-controller">here</a>

    `wget -O /root/apictl-4.1.2-linux-x64.tar.gz https://apim.docs.wso2.com/en/4.1.0/assets/attachments/learn/api-controller/apictl-4.1.2-linux-x64.tar.gz`{{exec}}
  
  - Extract the archive file.

    `tar -xvf apictl-4.1.2-linux-x64.tar.gz`{{exec}}

  - Add the apictl root location to PATH environment variable

    `export PATH=/root/apictl/:$PATH`{{exec}}

  - Check whether APICTL tool works. Execute the apictl help command

    `apictl -h`{{exec}}

- Register the API Manager environment with local APICTL tool

  - Run the 'add env' sub command to register an API Manager environment with the API CTL tool. 
  
    `apictl add env local --mi https://localhost:9164`{{exec}}

    Once executed you should see a response like below.

    ```
    Successfully added environment 'local'
    ```

Once configured, you could manage the micro integrator nodes remotly. Please find the available commands <a href="https://apim.docs.wso2.com/en/4.1.0/install-and-setup/setup/api-controller/managing-integrations/managing-integrations-with-ctl/" target="_blank">here</a>

Continue to the next section.