Update the /etc/hosts file and add the host mappings

  `vi /etc/hosts`{{exec}}

  ```
127.0.0.1  api.am.wso2.com
127.0.0.1  idp.am.wso2.com
127.0.0.1  default.gw.wso2.com
  ```{{copy}}

Expose the GW loadbalanced service through a local port. Press enter after this command to get back to the command line for you to proceed.

  `kubectl port-forward svc/apk-wso2-apk-gateway-service 9095:9095 &`{{exec}}
