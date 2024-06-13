- Install the WSO2 API Operator on k8s cluster. Please read the documentation <a href="https://apim.docs.wso2.com/en/4.1.0/install-and-setup/setup/kubernetes-operators/k8s-api-operator/install/" target="_blank">here</a> for more information.

  - Execute the following command to install the API operator 
    
    `kubectl apply -f https://github.com/wso2/k8s-api-operator/releases/download/2.0.2/api-operator-configs.yaml`{{exec}}

  - Check the operator availability

    `kubectl get integration`{{exec}}

- Deploy the integration using operator

  - Create a yaml file and open for editing

    `vi /root/integration_cr.yaml`

  - Update the file with following content to create an integration kind k8s artifact

    ```
    apiVersion: "wso2.com/v1alpha2"
    kind: "Integration"
    metadata:
      name: "sample-integration"
    spec:
      # e.g.: image: "wso2inc/wso2-mi-helloworld:1.0.0"
      image: "<docker_image>"
      deploySpec:
        minReplicas: 1
        requestCPU: "500m"
        reqMemory: "512Mi"
        cpuLimit: "1000m"
        memoryLimit: "1024Mi"
        livenessProbe:
          tcpSocket:
        port: 8290
          initialDelaySeconds: 30
          periodSeconds: 10
        readinessProbe:
          httpGet:
        path: /healthz
        port: 9201
          initialDelaySeconds: 30
          periodSeconds: 10
    ```

  - Apply the k8s artifact.

    `kubectl apply -f /root/integration_cr.yaml`{{exec}}

  - Check the pods and wait until deployment compleats

    `kubectl get pods`{{exec}}

- Test the services

  - Get the Cluster IP and port number from teh service

    `kubectl get svc`{{exec}}

    ```
    NAME                   TYPE        CLUSTER-IP       EXTERNAL-IP   PORT(S)          AGE
    api-operator-metrics   ClusterIP   10.10.10.43      <none>        8383/TCP         38m
    hello-world-service    ClusterIP   10.10.10.195    <none>        8290/TCP         37m
    ```

  - Invoke the services through the Cluster IP

    `curl http://<CLUSTER_IP>:<PORT>/<API_CONTEXT>/<RESOURCE>`{{copy}}

    e.g.:

    `curl http://10.10.10.195:8290/HelloWorld/Hi`{{copy}}

Continue to the next section.