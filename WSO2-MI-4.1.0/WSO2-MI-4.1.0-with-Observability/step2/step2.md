- Open a new terminal window

    ![Scan results](../assets/resources/images/new-terminal.png)
    
- Install Grafana
    - Download the compatible grafana version

        `wget -O /root/grafana-7.1.1.linux-amd64.tar.gz https://dl.grafana.com/oss/release/grafana-7.1.1.linux-amd64.tar.gz`{{exec}}

    - Extract the archive file to prefered location
        `mkdir /root/grafana && tar xf /root/grafana-7.1.1.linux-amd64.tar.gz -C /root/grafana --strip-components 1`{{exec}}

- Start Grafana

    - Start the service. Keep this service running through out the lab

    Switch back to the terminal tab 1 and continue

Continue to the next section.