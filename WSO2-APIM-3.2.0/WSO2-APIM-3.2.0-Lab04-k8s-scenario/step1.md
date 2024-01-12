
1) Start the k8s cluster

`launch.sh`{{execute}}

2) Check the cluster status. Wait till both nodes becomes ready.

`kubectl get nodes`{{execute}}

3) Find the IP of the worker node. This might be required when running the next step.

`ping -c 1 node01`{{execute}}

3) Update the hostname

`bash sethostname.sh`{{execute}}

4) Launch the setup script.

`bash wso2am-ga.sh --deploy`{{execute}}

Once "Processing WSO2 API Manager" appears, distrupt the Progress bar by pressing the Ctrl+C

5) Change the namespace for the current session

`kubectl config set-context --current --namespace=wso2`{{execute}}

