- Create two git repositories (If you haven't created before)

    - `api-source-repository` to store the API source projects

    - `api-deploy-state-repository` to mantain the deployment status

- Configure the git webhook for 'api-source-repository' to trigger jenkins on code changes

    - Go to the 'webhooks' under the 'api-source-repository' repository 'settings' page

    - Click 'Add webhook'

        - Enter jenkins webhook url 

            `{{TRAFFIC_HOST1_8080}}/github-webhook/`{{copy}}

        - Select 'application/json' as the content type

        - Select 'Let me select individual events' and choose 'Pull requests', 'Pushes' options from the list.

        - Keep the 'Active' tick on and Click 'Add webhook'

- Clone the source repository and initialize
    
    - Clone the 'api-source-repository' repository. Please replace the account name.

        `git clone https://github.com/<youraccount>/api-source-repository.git`

    - Go to the cloned repository

        `cd api-source-repository`{{exec}}
    
    - Initialize the apictl vcs mode
        `apictl vcs init`{{exec}}

    - Add, Commit and push the changes to remote repository

        `git add vcs.yaml`{{exec}}

        `git commit -m 'adding vcs file'`{{exec}}

        `git push origin master`{{exec}}

- Clone the deployment state repository and initialize

    - Go to the home directory

        `cd /root/`{{exec}}
    
    - Clone the 'api-deploy-state-repository' repository. Please replace the account name.

        `git clone https://github.com/<youraccount>/api-deploy-state-repository.git`

    - Go to the cloned repository

        `cd api-source-repository`{{exec}}

    - Create a new branchfor DEV environment

        `git checkout -b dev`{{exec}}

Continue to the next section.