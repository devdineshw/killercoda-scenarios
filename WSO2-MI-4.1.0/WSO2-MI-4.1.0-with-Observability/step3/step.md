- Open a new terminal window

    ![Scan results](../assets/resources/images/new-terminal.png)

- Install Loki
    - Download the compatible grafana version

      `wget -O /root/loki-linux-amd64.zip https://github.com/grafana/loki/releases/download/v2.2.1/loki-linux-amd64.zip`{{exec}}

    - Extract the archive file to prefered location and set execute permission

      `mkdir /root/loki/ && unzip /root/loki-linux-amd64.zip -d /root/loki && chmod u+x /root/loki/loki-linux-amd64`{{exec}}

    - Create loki configuration

      `vi /root/loki/loki-local-config.yaml`{{exec}}

      ```
      auth_enabled: false

      server:
        http_listen_port: 3100
      
      ingester:
        lifecycler:
          address: 127.0.0.1
          ring:
            kvstore:
              store: inmemory
            replication_factor: 1
          final_sleep: 0s
        chunk_idle_period: 5m
        chunk_retain_period: 30s
        max_transfer_retries: 0
      
      schema_config:
        configs:
          - from: 2018-04-15
            store: boltdb
            object_store: filesystem
            schema: v11
            index:
              prefix: index_
              period: 168h
      
      storage_config:
        boltdb:
          directory: /tmp/loki/index
      
        filesystem:
          directory: /tmp/loki/chunks
      
      limits_config:
        enforce_metric_name: false
        reject_old_samples: true
        reject_old_samples_max_age: 168h
      
      chunk_store_config:
        max_look_back_period: 0s
      
      table_manager:
        retention_deletes_enabled: false
        retention_period: 0s
      ```{{copy}}

- Start Loki service. Keep this service running through out the lab

  `/root/loki/loki-linux-amd64 -config.file=/root/loki/loki-local-config.yaml`{{exec}}

Continue to the next section.