1) Move to the jaggery apps directory

`cd wso2am-3.2.0/repository/deployment/server/jaggeryapps`{{execute}}

2) Execute the following commands to install the dependancies

`npm install`{{execute}}

`npm run bootstrap`{{execute}}

3) Do the code updates as required

e.x.: devportal jsx files

4) Build the project

`cd devportal/`{{execute}}

`npm run build:dev`{{execute}}

5) Check the UI

https://[[HOST_SUBDOMAIN]]-9443-[[KATACODA_HOST]].environments.katacoda.com/devportal

