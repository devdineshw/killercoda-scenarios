- Make sure the API manager is running. We conside this instance as the DEV environment.

    - Check the logs.

        `tail -f apim1/wso2am-4.2.0/repository/logs/wso2carbon.log`{{exec}}
    
    - Start the service if not running already. Wait till the server start to continue to the next step.
        `sh apim1/wso2am-4.2.0/bin/api-manager.sh start`{{exec}}

- Create a new API and push to git (This step could be done even in your local machine, as long as you have the apictl tool and git configured)

    - Move to the 'api-source-repository' folder which we already cloned.

        `cd /root/api-source-repository/`{{exec}}

    - Create an API project using the swagger file.

        `apictl init PetstoreAPI --oas https://raw.githubusercontent.com/OAI/OpenAPI-Specification/main/examples/v2.0/yaml/petstore.yaml`{{exec}}

    - Generate the deployment resource using the apictl. Store it inside the 'api-deploy-state-repository' directory

        `apictl gen deployment-dir --source /root/api-source-repository/PetstoreAPI --destination /root/api-deploy-state-repository`{{exec}}

    - Open the 'params.yaml' from the generated deployment config folder and update as below. We are going to configure only the dev environment, but in actual use cases, you should configure the higher environments too.

        `vi /root/api-deploy-state-repository/DeploymentArtifacts_SwaggerPetstore-1.0.0/params.yaml`{{exec}}

```
environments:
    - name: dev
      configs:
        endpoints:
            production:
                url: 'https://petstore.swagger.io/v2/'
        deploymentEnvironments:
            - displayOnDevportal: true
              deploymentEnvironment: Default
              deploymentVhost : localhost
```

    - Push the 'api-deploy-state-repository' changes first.

        `cd /root/api-deploy-state-repository/`{{exec}}

        `git add .`{{exec}}

        `git commit -m 'adding petstore api deploy configs'`{{exec}}

        `git push origin -u dev`{{exec}}

    - Push the 'api-source-repository'

        `cd /root/api-source-repository/`{{exec}}

        `git add .`{{exec}}

        `git commit -m 'adding petstore api'`{{exec}}

        `git push`{{exec}}

    - Go to the Jenkins dashboard and check the 

        {{TRAFFIC_HOST1_8080}}

        Once you push the 'api-source-repository' you could go to the jenkins and notice that there is a build triggered automatically.

    - Go to the API Publisher and see the created API
        
        {{TRAFFIC_HOST1_8180}}/publisher


Continue to the next section.