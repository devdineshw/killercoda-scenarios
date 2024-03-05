- Configure the pre-requisites
    - Install JSON parser for linux

        `apt install jq`
    - Install Jenkins
        
        - Add the jenkins repository

            `wget -O /usr/share/keyrings/jenkins-keyring.asc https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key && echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null`{{exec}}

        - Update the repository cache and install jenkins

            `apt update && apt install jenkins`{{exec}}

        - Complete the jenkins installation from the UI. Select the Default options and continue

            {{TRAFFIC_HOST1_8080}}/jenkins

        ``

    - Download and extract the apictl tool

        `wget -O apictl-4.2.4-linux-amd64.tar.gz https://github.com/wso2/product-apim-tooling/releases/download/v4.2.4/apictl-4.2.4-linux-amd64.tar.gz`{{exec}}

        `tar -xvf apictl-4.2.4-linux-amd64.tar.gz`{{exec}}

        `echo "export PATH='/root/apictl/:$PATH'" >> /etc/profile && source /etc/profile`{{exec}}

Continue to the next section.
