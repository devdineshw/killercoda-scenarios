- Enable correlation logs
  - Option 1: Updayte the startup script
    - Open the startup script

      `vi apim1/wso2am-4.2.0/bin/api-manager.sh`{{exec}}

    - Look for the correlation log configuration line and enable (append the line if not available). Then save the file and start/restart the API Manager service

      `    -DenableCorrelationLogs=true \`

  - Option 2: Enable during the startup using a startup parameter

    `sh apim1/wso2am-4.2.0/bin/api-manager.sh -DenableCorrelationLogs=true start`

  - Option 3: Enable correlation logs using REST apis during the runtime

    `curl -X PUT 'https://localhost:9443/api/am/devops/v0/config/correlation' -H 'accept: application/json' -H 'Content-Type: application/json' -H 'Authorization: Basic YWRtaW46YWRtaW4=' -d '{"components":[{"name":"http","enabled":"true"}, {"name":"ldap","enabled":"false"}, {"name":"jdbc","enabled":"true"}, {"name":"synapse","enabled":"true"}, {"name":"method-calls","enabled":"false"}]}' -k`{{exec}}

    Please note that you have to update the hostname, port, Authorization header according to your enavironment. Using the JSON payload, this API let's you enable correlation logs for specific components instead of enabling for all.

- Check the correlation logs

  `tail -f apim1/wso2am-4.2.0/repository/logs/correlation.log`{{exec}}

  More details about correlation logs available <a href="https://apim.docs.wso2.com/en/4.2.0/observe/api-manager/monitoring-correlation-logs/">here</a>

Continue to the next section.