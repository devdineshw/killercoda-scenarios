- Go to the API Publisher portal and login in with a user who has creator permissions. 

  For this lab, you could use the `admin` user, who has all the permissions.

  {{TRAFFIC_HOST1_80}}/publisher

- Create the below two APIs to use in the API Product creation flow.

  - Customer info API

    - Download the customer-info-api definition file from the below location

      https://apim.docs.wso2.com/en/4.2.0/assets/attachments/learn/customer-info-api.yaml

    - Click 'Create API' > 'Import Open API' option.
    - Select 'OpenAPI File/Archive' option
    - Browse the downloaded 'customer-info-api.yaml' file and click 'Next'
    - Update the feilds with below details

      - Name: `CustomerInformation`
      - Context: `/customer-info`
      - Version: `1.0.0`
      - Endpoint: `https://run.mocky.io/v3/7743e4df-44de-48ab-afd5-bb934bebe983`{{copy}}

      Click 'Create' button.
    - Go to the 'Develop' > 'Portal Configurations' > 'Subscriptions' page, Choose 'Unlimited' option and click 'Save'
    - Go to the 'Deploy' > 'Deployments' page, select the 'Default' gateway environment and click 'Deploy'
    - Go to the 'API Overview' page and click 'Publish' button

  - Leasing API

    - Download the leasing-api definition file from the below location

      https://apim.docs.wso2.com/en/4.2.0/assets/attachments/learn/leasing-api.yaml

    - Click 'Create API' > 'Import Open API' option.
    - Select 'OpenAPI File/Archive' option
    - Browse the downloaded 'leasing-api.yaml' file and click 'Next'
    - Update the feilds with below details

      - Name: `LeasingAPI`
      - Context: `/leasing`
      - Version: `1.0.0`
      - Endpoint: `https://run.mocky.io/v3/ea084d88-d944-4431-a89f-5a0023d9296f`{{copy}}

      Click 'Create' button.
    - Go to the 'Develop' > 'Portal Configurations' > 'Subscriptions' page, Choose 'Unlimited' option and click 'Save'
    - Go to the 'Deploy' > 'Deployments' page, select the 'Default' gateway environment and click 'Deploy'
    - Go to the 'API Overview' page and click 'Publish' button.

  Now you have created two APIs and published.

Continue to the next section.