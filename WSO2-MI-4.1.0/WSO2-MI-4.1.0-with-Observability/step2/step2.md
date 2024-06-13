- Open a new terminal window

    ![Scan results](../assets/resources/images/new-terminal.png)

- Install Grafana
    - Download the compatible grafana version

        `wget -O /root/grafana-7.1.1.linux-amd64.tar.gz https://dl.grafana.com/oss/release/grafana-7.1.1.linux-amd64.tar.gz`{{exec}}

    - Extract the archive file to prefered location
        `mkdir /root/grafana && tar xf /root/grafana-7.1.1.linux-amd64.tar.gz -C /root/grafana --strip-components 1`{{exec}}

- Start Grafana
    - Move to the grafana bin directory

        `cd /root/grafana/bin/`

    - Start the service. Keep this service running through out the lab

        `./grafana-server`{{exec}}

    Switch back to the terminal tab 1 and continue

- Configure grafana

    - Log into the Grafana UI. Use 'admin' as both username and password. Skip the password change page.

        {{TRAFFIC_HOST1_3000}}

    - Configure data source

        - Go to the 'Configuration' > 'Data Sources' page.

        - Select 'Prometheus' from the list

        - Select 'Browser' under the 'HTTP' > 'Access' and click 'Save and Test' at the bottom.


    - Configure dashboards

        - Go to the Grafana dashboard repository and identify the required dashboards for your use-cases.

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

        - Go to 'Dashboards' > 'Manage' from the left side menu

        - Click 'Import' button and enter the dashboard ID in the 'Import via grafana.com' text box. Then click 'Load'. Repeast the same process for all the dashbaords.

    - 


Continue to the next section.