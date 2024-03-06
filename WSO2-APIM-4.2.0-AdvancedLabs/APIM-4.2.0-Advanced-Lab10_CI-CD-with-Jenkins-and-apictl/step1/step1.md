- Configure the pre-requisites
    - Install JSON parser for linux

        `apt install jq -y`
    - Download and extract the apictl tool

        `wget -O apictl-4.2.4-linux-amd64.tar.gz https://github.com/wso2/product-apim-tooling/releases/download/v4.2.4/apictl-4.2.4-linux-amd64.tar.gz`{{exec}}

        `tar -xvf apictl-4.2.4-linux-amd64.tar.gz`{{exec}}

        `echo "export PATH='/root/apictl/:$PATH'" >> /etc/profile && source /etc/profile`{{exec}}

    - Install Jenkins
        
        - Add the jenkins repository

            `wget -O /usr/share/keyrings/jenkins-keyring.asc https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key && echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null`{{exec}}

        - Update the repository cache and install jenkins

            `apt update && apt install jenkins -y`{{exec}}

        - [Only for this environment] Disable the CSRF validation 

            - Open the service configuration file

                `vi /lib/systemd/system/jenkins.service`{{exec}}

            - Look for the JAVA system parameter line (Environment) and append the CSRF disable configuration similar to the below example

                ```
                # Arguments for the Jenkins JVM
                Environment="JAVA_OPTS=-Djava.awt.headless=true -Dhudson.security.csrf.GlobalCrumbIssuerConfiguration.DISABLE_CSRF_PROTECTION=true"
                ```

            - Update the configuration cache and restart the jenkins service
                `systemctl daemon-reload && systemctl restart jenkins.service`{{exec}}

        - Complete the jenkins installation from the UI. 

            - Get the tempory admin password from the following command

                `cat /var/lib/jenkins/secrets/initialAdminPassword`{{exec}}

            - Go to the jenkins admin portal and login

                {{TRAFFIC_HOST1_8080}}
                
            - Click 'Install suggested plugins' option. Incase if you face an error, please try again. 
            
            - Create an admin user with the below details once the plugin instaltion is done.

                Username: {{admin}} <br>
                Password: {{admin}} <br>
                Fullname: {{Admin}} <br>
                Email: {{admin@jenkins.com}}

        - Install the 'generic-webhook-trigger' plugin, Make sure to select the Restart Jenkins after plugin installation option at the bottom of the page to enable the plugin.

            ![Scan results](../assets/resources/images/pulgin-setup.png)

        - Configure apictl tool in jenkins
    
            ![Scan results](../assets/resources/images/env_setup.png)

Continue to the next section.
