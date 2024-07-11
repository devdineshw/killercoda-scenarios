Expose the GW loadbalanced service through a local port. Press enter after this command to get back to the command line for you to proceed.

`kubectl port-forward svc/apk-wso2-apk-gateway-service 9095:9095 &`{{exec}}
