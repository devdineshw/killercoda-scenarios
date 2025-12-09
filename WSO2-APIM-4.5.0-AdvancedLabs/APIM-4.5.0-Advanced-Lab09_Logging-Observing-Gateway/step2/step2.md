- Enable the wire logs

    > Note that Wire Logs should be enabled for troubleshooting purposes only. It is not recommended to run production systems with Wire Logs enabled.

    - Open the log4j2.properties file
  
      `vi apim1/wso2am-4.5.0/repository/conf/log4j2.properties`{{exec}}

    - look for the pre defined wire log configuration. If the following lines are not available in the file please append.

      ```
      logger.synapse-wire.name = org.apache.synapse.transport.http.wire 
      logger.synapse-wire.level = DEBUG
      ```

    - Add the logger name to the loggers list

      ```
      loggers =  loggers = AUDIT_LOG, trace-messages, ....., synapse-wire
      ```

        Note: Above 'synapse-wire' logger will append the full http request and response (headers and the payload content) to the log file. You could log only the headers if needed by enabling 'synapse-headers' logger. NO need to enable both at the same time as the headers are available in 'synapse-wire' log anyway.

        ```
        logger.synapse-headers.name = org.apache.synapse.transport.http.headers
        logger.synapse-headers.level = DEBUG
        ```

    - Save the file and exit from the editor.

    - View the log files

      `tail -f apim1/wso2am-4.5.0/repository/logs/wso2carbon.log`{{exec}}

- Invoke the API again and check the logs. (No need to restart the server after changing log4j2.properties file)

  `tail -f apim1/wso2am-4.5.0/repository/logs/wso2carbon.log`{{exec}}

  In a single roundtrip of an API request/response, you can observe the following message flows via the Wire log.

  - Incoming request to API Gateway from API client (HTTPS-Listener xxx >>)
  - Outgoing request from API Gateway to actual backend (HTTP-Sender xxx <<)
  - Incoming response from actual backend to API Gateway (HTTP-Sender xxx >>)
  - Outgoing response from API Gateway to API client (HTTPS-Listener xxx <<)

- Turn off the wire loggs
  - Open the log4j2.properties file

    `vi apim1/wso2am-4.5.0/repository/conf/log4j2.properties`{{exec}}

  - Look for the logger name ('synapse-wire' in this case) in the loggers list and remove it

    ```
    loggers =  loggers = AUDIT_LOG, trace-messages, ....., synapse-wire
    ```

  - Save the file and exit from the editor.

Continue to the next section.