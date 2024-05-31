- Create the API project

  - Create a working directory and switch to the directory

    `mkdir /root/api_projects`{{exec}}

    `cd /root/api_projects`{{exec}}

  - Create the API project using the tool

    one way of creating API project is by pointing to an existing swagger/OpenAPI definition. Otherwise we could create an empty API Project and import API definitions later. Please note that 'PetstoreAPI' is the name which we provide for this API project.

    `apictl init PetstoreAPI --oas https://petstore.swagger.io/v2/swagger.json`{{exec}}

  - Check the generated project structure and files.

    `ls -la PetstoreAPI`{{exec}}
  
- Update the API project files

  Open the 'api.yaml' file and update the API backend details and API lifecycle state as follows.

    `vi PetstoreAPI/api.yaml`{{exec}}

    ```
    lifeCycleStatus: PUBLISHED
    production_endpoints:
        url: https://petstore.swagger.io/v2
    sandbox_endpoints:
        url: https://petstore.swagger.io/v2
    ```

- Publish the API project

    `apictl import api --file ./PetstoreAPI --environment dev -k --rotate-revision`{{exec}}

    it could ask for the credentials, please use the default admin credentials<br>
    Username: admin<br>
    password: admin

Continue to the next section.