- Install WSO2 APIM using helm

    `helm install wso2am420 wso2/am-single-node --version 4.2.0-1 --namespace wso2am --create-namespace -f values.yaml`{{execute}}


    [optional] Helm chart repository could be cloned from below command and customize

    `git clone https://github.com/wso2/kubernetes-apim.git`{{execute}}
    

    It will take 3 to 5 mins to complete the server startup.
    You could check the status of the pods using 

    `kubectl get pods -n wso2am`{{execute}}

    ```
    NAME                                             READY  STATUS 
    wso2am-mysql-db-service-64878867d-drw7x          1/1    Running
    wso2am-single-node-am-deployment-959b6855-j78jp  1/1    Running
    wso2am420-nfs-server-provisioner-0               1/1    Running
    ```

Once all the pods are in Running state, continue to the next section.