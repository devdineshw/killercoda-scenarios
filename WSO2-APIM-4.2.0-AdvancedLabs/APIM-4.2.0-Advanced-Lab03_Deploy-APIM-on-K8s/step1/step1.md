- Check the cluster status. Wait till both nodes becomes ready.

    `kubectl get nodes`{{execute}}

- Install the Nginx Ingress Controller. There are many ways of doing this, but easiest way to get started is using the default installation artifacts

    `kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.8.2/deploy/static/provider/cloud/deploy.yaml`{{execute}}

- Add WSO2 helm repo and update.

    `helm repo add wso2 https://helm.wso2.com && helm repo update`{{execute}}

Continue to the next section.
