- Export the API from DEV environment

    - Log into the dev environment

        `apictl login dev -u admin -p admin -k`{{exec}}

    - Check the available API list

        `apictl get apis -e dev -k`

    - Export the API

        `apictl export api -e dev -n PizzaShackAPI -v 1.0.0 --provider admin --latest`{{exec}}

- Import the API

    - Log into the production environment

        `apictl login prod -u admin -p admin -k`{{exec}}
    
    - Import the API

        `apictl import api -e prod -f PizzaShackAPI_1.0.0.zip --rotate-revision`{{exec}}

Continue to the next section.