- Create the API project

  - Create a working directory and switch to the directory

    `mkdir /root/api_projects`{{exec}}

    `cd /root/api_projects`{{exec}}

  - Create the API project using the tool

    one way of creating API project is by pointing to an existing swagger/OpenAPI definition. Otherwise we could create an empty API Project and import API definitions later. Please note that 'PetstoreAPI' is the name which we provide for this API project.

    `apictl init PetstoreAPI --oas https://petstore.swagger.io/v2/swagger.json`{{exec}}

  - Check the generated project structure and files.

    `ls -la PetstoreAPI`
  
- Update the API project files

  Open the 'api.yaml' file and update the API backend details, API lifecycle state, etc.

    `vi PetstoreAPI/api.yaml`{{exec}}

    ```
    lifeCycleStatus: PUBLISHED
    production_endpoints:
        url: https://petstore.swagger.io/v2
    sandbox_endpoints:
        url: https://petstore.swagger.io/v2
    ```

Continue to the next section.