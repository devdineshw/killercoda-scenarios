- Install Helm

`curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 && chmod 700 get_helm.sh && ./get_helm.sh`{{execute}}

- Add helm repo and update index

`helm repo add wso2apk https://github.com/wso2/apk/releases/download/1.0.0 && helm repo update`{{execute}}

- Install WSO2 APK using Helm

NOTE: You could customize the gateway runtime parameters using the values file, but for now let's use the default values.

`helm install apk wso2apk/apk-helm --version 1.0.0`{{execute}}

- Test the WSO2 APK

`kubectl get pods`{{execute}}
