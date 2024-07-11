Please note that following steps are used only within this playground to get the demo working. You don't have to do these steps in other environments.
- Allow pod creation on the control plane, but as low as possible

    `kubectl taint node controlplane node-role.kubernetes.io/control-plane:NoSchedule-`{{exec}}

    `kubectl taint node controlplane node-role.kubernetes.io/control-plane:PreferNoSchedule`{{exec}}


Gateway API is a set of CRD (Custom Resource Definition). You could intall the Gateway API using the following command. 
This is part of the WSO2 APK Helm chart, so this is an optional setep.

- Install the Gateway CRD

    `kubectl apply -f https://github.com/kubernetes-sigs/gateway-api/releases/download/v1.0.0/standard-install.yaml`{{execute}}

- Test it

    `kubectl get gateways`{{execute}}

