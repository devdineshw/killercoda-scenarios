- Open the carbon management console and login in
  
  {{TRAFFIC_HOST1_80}}/carbon

- Go to 'Main' > 'Users and Roles' > 'Add'

  ![Scan results](../assets/resources/images/cicd-jenkins-arch.jpg)

- Select 'Add New Role'

- Enter the prefered role name and click 'Next'

  use `apicreator`{{copy}} as the role name.

- Select the required permissions from the permission tree.

  For the 'apicreator' role, following permissions are needed.

    - 'Configure' > 'Governance' and all underlying permission
    - 'Login'
    - 'Manage' > 'API' > 'Create'
    - 'Manage' > 'Resources' > 'Govern' and all underlying permissions.


Continue to the next section.