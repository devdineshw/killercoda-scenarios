Unfortunatly we cannot access the UIs from this playground as we don't have proper networking. We could expose the k8s service to localhost and try an API call.

- expose the k8s service to localhost by port forwarding
    `kubectl port-forward svc/wso2am-single-node-am-service -n wso2am 9443:9443 &`{{execute}}

- Make the API call to get the API Manager version

    `curl -k https://localhost:9443/services/Version`{{exec interrupt}}