- Configure the micro integrator

    - Open the MI configuratoin file

        `vi /root/mi1/wso2mi-4.1.0/conf/deployment.toml`{{exec}}

    - Append the following section 

        ```
        [[synapse_handlers]]
        name="CustomObservabilityHandler"
        class="org.wso2.micro.integrator.observability.metric.handler.MetricHandler"
        ```{{copy}}

    - Open the MI startup script and add the following JVM parameter. Also, this can be pass as a parameter when starting the service.

        `vi /root/mi1/wso2mi-4.1.0/bin/micro-integrator.sh`{{exec}}

        `-DenablePrometheusApi=true \`{{copy}}

        e.g.: 

        ```
        ...
        -DenableManagementApi=true \
        -DenablePrometheusApi=true \
        -Dlog4j2.contextSelector=org.apache.logging.log4j.core.async.AsyncLoggerContextSelector \
        ...
        ```

- Start the micro integrator

    - move to the MI directory

        `cd /root/mi1/wso2mi-4.1.0/bin/`{{exec}}

    - Start the service in background
        
        `./micro-integrator.sh start`{{exec}}

    - Tail the logs
        
        `tail -f /root/mi1/wso2mi-4.1.0/repository/logs/wso2carbon.log`{{exec}}

        You could stop the tail with `Ctrl+C`


Continue to the next section.