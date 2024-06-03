- Export the API from DEV environment

    - Log into the dev environment

        `apictl login dev -u admin -p admin -k`{{exec}}

    - Check the available API list

        `apictl get api-products -e dev -k`{{exec}}

    - Export the API. Please update the parameters.

        `apictl export api-product -e dev -n <API_PRODUCT_NAME> -v <VERSION> -r admin -k`

- Import the API

    - Log into the production environment

        `apictl login prod -u admin -p admin -k`{{exec}}
    
    - Import the API. Please update the parameters

        `apictl import api-product -e prod -f <EXPORTED_API_PRODUCT_PATH> --import-apis=true --rotate-revision -k`

- Validate

    - Go to the PROD publisher portal and check the API

        {{TRAFFIC_HOST1_8050}}/publisher

Continue to the next section.