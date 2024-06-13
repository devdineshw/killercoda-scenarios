- Open a new terminal window

    ![Scan results](../assets/resources/images/new-terminal.png)

- Install Grafana
    - Download the compatible grafana version

        `wget -O /root/grafana-7.1.1.linux-amd64.tar.gz https://dl.grafana.com/oss/release/grafana-7.1.1.linux-amd64.tar.gz`{{exec}}

    - Extract the archive file to prefered location
        `mkdir /root/grafana && tar xf /root/grafana-7.1.1.linux-amd64.tar.gz -C /root/grafana --strip-components 1`{{exec}}

- Start Grafana
    - Move to the grafana bin directory

        `cd /root/grafana/bin/`{{exec}}

    - Start the service. Keep this service running through out the lab

        `./grafana-server`{{exec}}

- Configure grafana

    - Log into the Grafana UI. Use 'admin' as both username and password. Skip the password change page.

        {{TRAFFIC_HOST1_3000}}

    - Configure data sources

        - Prometheus

            - Go to the 'Configuration' > 'Data Sources' page.

            - Click 'Add Data Source' and select 'Prometheus' from the list

            - Enter 'http://localhost:9090' as the 'HTTP' > 'URL' and click 'Save and Test' at the bottom.

        - Loki 

            - Go to the 'Configuration' > 'Data Sources' page.

            - Click 'Add Data Source' and select 'Loki' from the list

            - Enter 'http://localhost:3100' under the 'HTTP' > 'Access' and click 'Save and Test' at the bottom.

    - Configure dashboards

        - Go to the Grafana dashboard repository and get the dashboard IDs. You could find the IDs in the below table

            `https://grafana.com/orgs/wso2/dashboards`

            ```
            Dashboard Name                   Dashboard ID
            MicroGateway Dashboard           12061 
            WSO2 API Metrics                 12888
            WSO2 Inbound Endpoint Metrics    12890
            WSO2 Integration Cluster Metrics 12783
            WSO2 Integration Node Metrics    12887
            WSO2 Proxy Service Metrics       12889
            ```

        - Go to the Grafana UI

        - Open 'Dashboards' > 'Manage' page from the left side menu

        - Click 'Import' button and enter the dashboard ID in the 'Import via grafana.com' text box. Then click 'Load'. Repeat the same process for all the dashbaords.

Continue to the next section.