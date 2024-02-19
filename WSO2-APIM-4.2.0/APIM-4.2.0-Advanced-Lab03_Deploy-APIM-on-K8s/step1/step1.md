- Check the cluster status. Wait till both nodes becomes ready.

    `kubectl get nodes`{{execute}}

- Find the IP of the worker node. This might be required when running the next step.

    `ping -c 1 node01`{{execute}}

- Update the hostname

    `bash sethostname.sh`{{execute}}

- Launch the setup script.

    `bash wso2am-ga.sh --deploy`{{execute}}

- Once "Processing WSO2 API Manager" appears, distrupt the Progress bar by pressing the Ctrl+C

- Change the namespace for the current session

    `kubectl config set-context --current --namespace=wso2`{{execute}}

