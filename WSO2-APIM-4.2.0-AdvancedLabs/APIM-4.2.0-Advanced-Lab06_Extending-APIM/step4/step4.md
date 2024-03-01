- Creating the global policy

    - Create a file called `AddCustomLogPolicy.j2` in your local machine and add the following content.

      ```
      <log level="custom">
        <property name="{{logName}}" value="{{logValue}}" />
      </log>
      ```{{copy}}

    - Go to the Publisher portal

        {{TRAFFIC_HOST1_80}}/publisher

    - Navigate to the 'Policies' view from the main menu (Left corner bar from the publisher home page)

    - Click 'Add New Policy'. 

    - Enter following values <br>
        
        Name: `CustomAddLogMessagePolicy`<br>
        Version: `1`<br>
        Description: `Add custom log message using this policy`<br>
        Applicable Flows: Select all options(Request, Response, Fault)<br>
        Supported API Types: HTTP<br>
        Supported Gateways: Regular Gateway

    - Upload the 'AddCustomLogPolicy.j2' file created in your local system

    - Add two policy attributes according to the below table. These are the parameters we have in the above created j2 file.

        ```
        Name        Display Name  Required   Value Type
        logName     Log Name      true       String
        logValue    Log Value     true       String
        ```
    - Save the policy

- Applying the policy to API

    - Go to the publisher portal and open the API
    
        {{TRAFFIC_HOST1_80}}/publisher
    - Go to the policy page ('Develop > API Configurations > Policies')

    - Under the 'Policy List', you will see the newly created policy (CustomAddLogMessagePolicy). Drag and drop the policy to the 'Request Flow' area under the resource. 
    
    - Add the parameter values accordingly. 

        ```
        Parameter Name     Parameter Value
        Log Name           CustomLog
        Log Value          API In Flow
        ```

    - You could apply the policy to all the resources from the pop up window.

    - Save and Deploy the API


- To test the policy, please enable the wire logs.

    - Invoke to the API again from the devportal try out page or using curl. You should be able to see the new log entries in wso2carbon log file.

Continue to the next section.