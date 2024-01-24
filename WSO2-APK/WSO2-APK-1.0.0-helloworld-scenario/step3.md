Please note that following steps are used only within this playground to get the demo working. You don't have to do these steps in other environments.
- Make the control plane a worker node

`kubectl taint node controlplane node-role.kubernetes.io/control-plane:NoSchedule-`{{execute}}

- Expose the GW loadbalanced service through a local port

`kubectl port-forward svc/apk-wso2-apk-gateway-service 9095:9095 &`{{execute}}
