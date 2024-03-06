This scenario shows how to configure a ci/cd process with jenkins, github and apictl tool

![Scan results](../assets/resources/images/cicd-jenkins-arch.png)

<b>[Important]
<br>
Please compleat the followings steps before you click the 'Start' button.

- Create two git repositories under your github account
    - `api-source-repository` to store the API source projects
    - `api-deploy-state-repository` to mantain the deployment status
- Create a free jfrog account and configure
    - Create a new account
        https://jfrog.com/start-free/
        
    - Login as admin and create a new user (Identity and Access > Users). Select all the roles from the list.

        username: repouser<br>
        password: user@123<br>

    - Go to Security > Settings and select Allow Anonymous Access

    - Create a repository to upload the artifacts. 

        Go to Repositories and select Add Repositories. Select 'Generic' type and provide a name ({{api_repository}})
</b>


> **_NOTE:_** Please wait until the playground is ready to start the scenario.
