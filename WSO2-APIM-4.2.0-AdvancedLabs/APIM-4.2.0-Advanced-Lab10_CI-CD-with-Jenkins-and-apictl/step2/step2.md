- Create two git repositories (If you haven't created before)

    - `api-source-repository` to store the API source projects
    - `api-deploy-state-repository` to mantain the deployment status

- Configura the git webhook for 'api-source-repository' to trigger jenkins on code changes
    - Go to the 'webhooks' under the 'api-source-repository' repository 'settings' page

    - Click 'Add webhook'
        - Enter jenkins webhook url 

            `{{TRAFFIC_HOST1_8080}}/github-webhook/`
        - Select 'application/json' as the content type
        - Select 'Let me select individual events' and choose 'Pull requests', 'Pushes' options from the list.
        - Keep the 'Active' tick on and Click 'Add webhook'

- Clone the source repository and initialize
    
    - Clone the 'api-source-repository' repository
        `git clone https://github.com/<youraccount>/api-source-repository.git`

    - Go to the cloned repository

        `cd api-source-repository`{{exec}}
    
    - Initialize the apictl vcs mode
        `apictl vcs init`{{exec}}

    - 


Continue to the next section.