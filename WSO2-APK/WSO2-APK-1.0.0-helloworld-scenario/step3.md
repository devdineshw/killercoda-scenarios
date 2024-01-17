- Create a namespace

`kubectl create namespace spring-apps`{{execute}}

- Deploy Springboot service

`kubectl apply -f sb-deployment.yaml -n spring-apps`{{execute}}
