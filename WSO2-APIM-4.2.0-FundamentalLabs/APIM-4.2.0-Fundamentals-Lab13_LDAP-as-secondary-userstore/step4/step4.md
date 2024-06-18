  - Open the carbon management console and login in if you are not already on the management console.
  
    {{TRAFFIC_HOST1_80}}/carbon

  - Go to 'Main' > 'Users and Roles' > 'Add'

  - Select 'Add New User'

  - Choose 'wso2.com' from the 'Domain' drop down, to store the new user in the external LDAP. Continue the user creation steps and add a new user. Assign relevent 'internal/creator' and/or 'internal/publisher' roles while creating the user.

  - Log in to the publisher portal to validate the user creation.

    {{TRAFFIC_HOST1_80}}/publisher

    You could log into the publisher using fully qualified username, <domainname>/<username> e.g.:wso2.com/alex, or just the username, alex,  incase the username is unique across user stores. 
    
    Note: If the domain name is not specified, system will go through all the user stores and pick the first user matching the username.

Continue to the next section.