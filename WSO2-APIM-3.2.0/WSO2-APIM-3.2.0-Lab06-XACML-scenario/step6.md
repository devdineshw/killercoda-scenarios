Create an xml file called 'EntitlementMediator.xml' in your local machine with the below content

```
<sequence xmlns="http://ws.apache.org/ns/synapse"  name="EntitlementMediator">     
   <entitlementService xmlns="http://ws.apache.org/ns/synapse" remoteServiceUrl="https://localhost:9444/services" remoteServiceUserName="admin" remoteServicePassword="admin" callbackClass="org.wso2.sample.handlers.entitlement.APIEntitlementCallbackHandler"/>
</sequence>
```

Go the Publisher portal 

https://[[HOST_SUBDOMAIN]]-9443-[[KATACODA_HOST]].environments.katacoda.com/publisher


Follow the steps 14 to 16 on the following page

https://apim.docs.wso2.com/en/3.2.0/learn/api-security/authorization/role-based-access-control-using-xacml/#enabling-role-based-access-control

Test the API with different users
