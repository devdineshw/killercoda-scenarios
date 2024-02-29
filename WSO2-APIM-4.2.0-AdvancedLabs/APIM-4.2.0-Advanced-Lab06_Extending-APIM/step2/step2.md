- Go to the carbon management console and login as the admin user

  {{TRAFFIC_HOST1_80}}/carbon

- Go to the registry browser

  > Main Menu > Resources > Browse

- Open the '/_system/governance/apimgt/applicationdata/workflow-extensions.xml' in 'Edit as text' mode

- Look for the 'ApplicationCreation' element inside the 'WorkFlowExtensions' element. Default configuration should look like below sample

  ```
  <ApplicationCreation executor="org.wso2.carbon.apimgt.impl.workflow.ApplicationCreationSimpleWorkflowExecutor">
  <!--ApplicationCreation executor="org.wso2.carbon.apimgt.impl.workflow.ApplicationCreationApprovalWorkflowExecutor"-->
  ```

- Comment out the currently enabled 'ApplicationCreationSimpleWorkflowExecutor' and enable the 'ApplicationCreationApprovalWorkflowExecutor' class. Final version should look like below sample

  ```
  <!--ApplicationCreation executor="org.wso2.carbon.apimgt.impl.workflow.ApplicationCreationSimpleWorkflowExecutor"-->
  <ApplicationCreation executor="org.wso2.carbon.apimgt.impl.workflow.ApplicationCreationApprovalWorkflowExecutor">
  ```

- Save the file, go to the developer portal and login

  {{TRAFFIC_HOST1_80}}/devportal

- Create an application from the devportal. You will notice that the applicatoin will enter into 'INACTIVE' (waiting for approval) state instead of directly becoming 'ACTIVE'

- Go to the admin portal to approve the pending application creation requests. In the dashboard itself you will see the pending task list. Also you could see the full list under Task > Application Creatoin page.

  {{TRAFFIC_HOST1_80}}/admin

- Approve the resquest and go back to the devportal to see the state change of the application you created.

  > Similarly you could enable approval workflows for following operations
  >   - User Creation (through self user registration)
  >   - Application Deletion
  >   - Subscription Creation, Modification and Deletion
  >   - Application Registration (key generation)

Continue to the next section.