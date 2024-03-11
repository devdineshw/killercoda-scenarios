- Export the API from DEV environment

    - Log into the dev environment

        `apictl login dev -u admin -p admin`{{exec}}

    - Export the API

        `apictl export api -e dev -n PizzaShackAPI -v 1.0.0 --provider admin --latest`{{exec}}

- Create the deployment configuration

    - Extracted the API archive to working directory

        `unzip PizzaShackAPI_1.0.0.zip`{{exec}}

    - Generate the deplotment config directory

        `mkdir deployment_config`{{exec}}

        `apictl gen deployment-dir -s PizzaShackAPI-1.0.0 -d deployment_config`{{exec}}

    - edit the params.yaml file and update the environment details

        `vi deployment_config/DeploymentArtifacts_PizzaShackAPI-1.0.0/params.yaml`

        Replace the content with following, then Save and exit the editor

```
environments:
    - name: dev
      configs:
          endpoints:
              production:
                  url: 'https://localhost:9443/am/sample/pizzashack/v1/api/'
              sandbox:
                  url: 'https://localhost:9443/am/sample/pizzashack/v1/api/'
    - name: prod
      configs:
          endpoints:
              production:
                  url: 'https://localhost:9444/am/sample/pizzashack/v1/api/'
              sandbox:
                  url: 'https://localhost:9444/am/sample/pizzashack/v1/api/'
```

- Import the API

    - Option 1: Single API Import

        `apictl import api -f PizzaShackAPI-1.0.0/ -e prod --preserve-provider=false --update=true --rotate-revision --params deployment_config/DeploymentArtifacts_PizzaShackAPI-1.0.0/`

        Once this is done, you could log into the PROD api publisher and check the API.

        {{TRAFFIC_HOST1_8050}}/publisher

    - Option 2: Using the git based API synchornization.

        When you have API projects and deployment configurations in the relevent git repositories, you could simply deploy the same API into a new environment by simply triggering the vcs deploy command.

        `apictl vcs deploy -e prod`

        More information on this available in the following documentation

        https://apim.docs.wso2.com/en/latest/install-and-setup/setup/api-controller/cicd-using-cli/#a-promoting-apis-in-a-git-repository-to-upper-environments-via-cicd

Continue to the next section.