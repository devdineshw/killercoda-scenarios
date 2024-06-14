- Open a new terminal window

  ![Scan results](../assets/resources/images/new-terminal.png)

- Install Jaeger
  
  - Download the compatible grafana version

    `wget -O /root/jaeger-1.57.0-linux-amd64.tar.gz https://github.com/jaegertracing/jaeger/releases/download/v1.57.0/jaeger-1.57.0-linux-amd64.tar.gz`{{exec}}

  - Extract the archive file to prefered location

    `mkdir /root/jaeger/ && tar xvf /root/jaeger-1.57.0-linux-amd64.tar.gz -C /root/jaeger --strip-components 1`{{exec}}

- Start Jaeger and leave the tab running

  `/root/jaeger/jaeger-all-in-one`{{exec}}


- Update the MI configurations and restart the service

  - Switch to the tab1

  - Open the MI configuration file

    `vi /root/mi1/wso2mi-4.1.0/conf/deployment.toml`{{exec}}

  - Append the following section

    ```
    [mediation]
    flow.statistics.capture_all= true
    stat.tracer.collect_payloads= true
    stat.tracer.collect_mediation_properties= true

    [opentracing]
    enable = true
    logs = true
    manager_host = "localhost"
    agent_host = "localhost"
    ```

  - Restart the MI service

    - move to the MI directory

        `cd /root/mi1/wso2mi-4.1.0/bin/`{{exec}}

    - Start the service in background
        
        `./micro-integrator.sh restart`{{exec}}

    - Tail the logs
        
        `tail -f /root/mi1/wso2mi-4.1.0/repository/logs/wso2carbon.log`{{exec}}

        You could stop the tail with `Ctrl+C`

Continue to the next section.