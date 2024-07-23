[OPTIONAL] Gateway API is a set of CRD (Custom Resource Definition). You could intall the Gateway API using the following command. 
This is part of the WSO2 APK Helm chart, so this is an optional setep.

- Install the Gateway CRD

    `kubectl apply -f https://github.com/kubernetes-sigs/gateway-api/releases/download/v1.0.0/standard-install.yaml`{{execute}}

- Test it

    `kubectl get gateways`{{execute}}

