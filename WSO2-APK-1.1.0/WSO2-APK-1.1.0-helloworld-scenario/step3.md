Please note that following steps are used only within this playground to get the demo working. You don't have to do these steps in other environments.
- Allow pod creation on the control plane, but as low as possible

    `kubectl taint node controlplane node-role.kubernetes.io/control-plane:NoSchedule-`{{exec}}

    `kubectl taint node controlplane node-role.kubernetes.io/control-plane:PreferNoSchedule`{{exec}}

- Expose the GW loadbalanced service through a local port. Press enter after this command to get back to the command line for you to proceed.

`kubectl port-forward svc/apk-wso2-apk-gateway-service 9095:9095 &`{{exec}}
