- Start the API Manager using the below command

    `sh apim1/wso2am-4.2.0/bin/api-manager.sh start`{{exec}}

    Wait few seconds and check the logs. Wait till the server starts.

    `tail -f apim1/wso2am-4.2.0/repository/logs/wso2carbon.log`{{exec}}

    Use 'Ctrl+C' to exit from te log

- Create a directory to store the request payload files during the next steps

    `mkdir /root/requests`{{exec}}

    Move into the directory

    `cd /root/requests`{{exec}}

> Note: Each API manager version has it's own REST API version. Version number in the endpoint URL from one API manager version to could be different.

Continue to the next section.