- Open a new terminal window

    ![Scan results](../assets/resources/images/new-terminal.png)

- Configure Prometheus

    - Download the Prometheus binary

        `wget -O /root/prometheus-2.52.0.linux-amd64.tar.gz https://github.com/prometheus/prometheus/releases/download/v2.52.0/prometheus-2.52.0.linux-amd64.tar.gz`{{exec}}

    - Extract the Prometheus 

        `mkdir /root/prometheus && tar xf /root/prometheus-2.52.0.linux-amd64.tar.gz -C /root/prometheus --strip-components 1`{{exec}}

    - Open the prometheus configuration file, and replace with below configuration
        
        `vi /root/prometheus/prometheus.yml`{{exec}}

        ```
        global:
          scrape_interval:     15s 
          evaluation_interval: 15s 

        scrape_configs:
          - job_name: 'prometheus'
            static_configs:
            - targets: ['localhost:9090']
          - job_name: esb_stats
            metrics_path: /metric-service/metrics
            static_configs:
             - targets: ['localhost:9201']
        ```

- Create a linux service for prometheus (optional, but do it for this lab)

    - Create file

        `vi /etc/systemd/system/prometheus.service`{{exec}}

    - Update the configuration

        ```
        [Unit]
        Description=Prometheus Service
        After=network.target

        [Service]
        Type=simple
        ExecStart=/root/prometheus/prometheus --config.file=/root/prometheus/prometheus.yml

        [Install]
        WantedBy=multi-user.target
        ```{{copy}}

- Start Prometheus

    - If you have created a linux service,

        - Start the service

            `service prometheus start`{{exec}}

        - Check the service status

            `service prometheus status`{{exec}}

        You could close this terminal tab if you use this method.

    - If a linux service is not created,

        - go to the prometheus directory

            `cd /root/prometheus`{{exec}}

        - Start the service. Keep this service running through out the lab

            `./prometheus`{{exec}}

        Switch back to the terminal tab 1 and continue

Continue to the next section.