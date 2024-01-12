Access the URLs and verify the setup

https://[[HOST_SUBDOMAIN]]-9443-[[KATACODA_HOST]].environments.katacoda.com/carbon

Follow the below steps to enable workflows

1) Click Main → Resources → Browse

2) Go to the /_system/governance/apimgt/applicationdata/workflow-extensions.xml 
click on Edit as text to edit the file, disable the Simple Workflow Executor, and enable Approval Workflow Executor for application creation

```
<WorkFlowExtensions>
    <!--ApplicationCreation executor="org.wso2.carbon.apimgt.impl.workflow.ApplicationCreationSimpleWorkflowExecutor"-->
    <ApplicationCreation executor="org.wso2.carbon.apimgt.impl.workflow.ApplicationCreationApprovalWorkflowExecutor"/>
</WorkFlowExtensions>
```


