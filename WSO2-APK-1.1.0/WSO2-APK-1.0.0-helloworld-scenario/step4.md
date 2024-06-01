- Deploy Springboot service

`kubectl apply -f sb-deployment.yaml`{{execute}}

- Check the service

`kubectl get pods`{{execute}}

- Create the API resources and expose the service through Gateway

`kubectl apply -f sb-api.yaml`{{execute}}

- Check the service

`kubectl get apis`{{execute}}