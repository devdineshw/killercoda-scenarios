Start the micro integrator

- move to the MI directory

    `cd /root/mi1/wso2mi-4.1.0/bin/`{{exec}}

- Start the service in background
    
    `./micro-integrator.sh start`{{exec}}

- Tail the logs
    
    `tail -f ../repository/logs/wso2carbon.log`{{exec}}

    Note:  You could stop tha tail with `Ctrl+C`

Start the Sample Hospital Backend Service (Optional)

- Open a new terminal window

    ![Scan results](../assets/resources/images/new-terminal.png)

- go to the root directory

    `cd /root/`{{exec}}

- Start the java service. Keep this service running through out the lab

    `java -jar Hospital-Service-JDK11-2.0.0.jar`{{exec}}

Switch back to the previous terminal tab and continue

Start the micro integrator dashborad (Optional)

- move to the MI dashboard directory

    `cd /root/mi1/wso2mi-dashboard-4.1.0/bin/`{{exec}}

- Start the service in background
    
    `./dashboard.sh start`{{exec}}

- Tail the logs
    
    `tail -f ../logs/wso2carbon.log`{{exec}}

Please note that RabbitMQ is configured and running in this lab environment. You could find the steps to setup RabbitMQ in the WSO2 documentation <a href="https://apim.docs.wso2.com/en/4.1.0/install-and-setup/setup/mi-setup/brokers/deploy-rabbitmq/"  target="_blank">here</a>

Continue to the next section.