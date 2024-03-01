- Creating the global policy

    - Create a file called `AddCustomHeaderPolicy.j2` in your local machine and add the following content.

        `<property action="set" name="{{headerName}}" value="{{headerValue}}" scope="transport" />`

    - Go to the Publisher portal

        {{TRAFFIC_HOST1_80}}/publisher

    - Navigate to the 'Policies' view from the main menu (Left corner bar from the publisher home page)

    - Click 'Add New Policy'. 

    - Enter following values <br>
        
        Name: `CustomAddHeaderPolicy`<br>
        Version: `v1`<br>
        Description: `Add custom headers using this policy`<br>
        Applicable Flows: Select all options(Request, Response, Fault)<br>
        Supported API Types: HTTP<br>
        Supported Gateways: Regular Gateway

    - Upload the 'AddCustomHeaderPolicy.j2' file created in your local system

    - Add two policy attributes according to the below table. These are the parameters we have in the above created j2 file.

        ```
        Name          Display Name    Value Type
        headerName    Header Name     String
        headerValue   Header Value    String
        ```
    - Save the policy

- Applying the policy to API

    - Go to the publisher portal and open the API
    
        {{TRAFFIC_HOST1_80}}/publisher
    - Go to the policy page ('Develop > API Configurations > Policies')

    - Under the 'Policy List', you will see the newly created policy (CustomAddHeaderPolicy). Drag and drop the policy to the 'Request Flow' area under the resource. 
    
    - Add te parameter values accordingly.

        ```
        Parameter Name     Parameter Value
        headerName         X-Source
        headerValue        WSO2-APIM
        ```

    - You could apply the policy to all the resources from the pop up window.

    - Save and Deploy the API


- To test the policy, please enable the wire logs.

    - Update the log4j2.properties file. You DON'T have to restart the WSO2 APIM service to imact the changes to log4j configurations.
    
      - Open the log4j2.properties file

        `vi apim1/wso2am-4.2.0/repository/conf/log4j2.properties`{{exec}}

      - Enable the wire logs

        ```
        logger.synapse-wire.name = org.apache.synapse.transport.http.wire
        logger.synapse-wire.level = DEBUG
        ```{{copy}}

        ```
        loggers = AUDIT_LOG, trace-messages, ......, synapse-wire
        ```

    - Invoke to the API again from the devportal try out page or using curl. You should be able to see the new log entries in the backend request.

Continue to the next section.