1) Check the pod status.

`kubectl get pods`{{execute}}

Wait till all the pods become Running.

Get the pod names from this step to use in the next steps.

2) Check the logs of the APIM pod

Usually APIM pod will take 10 to 15 mins to start on this environment

`kubectl logs -f `{{execute}} 
POD_NAME

3) Optionally you could check the pod events

`kubectl describe pod `{{execute}}
POD_NAME


Continue to the next section once the APIM service is started.
