A sample web app is already available in this lab environment. Follow the steps given below to deploy the webapp and test it.

- Go to the API developer portal and login with the user you created in the previous step.

  {{TRAFFIC_HOST1_80}}/devportal

- Go to the 'DefaultApplication' which we subscribed to the 'PizzaShack' API. Copy the 'Consumer Key' and 'Consumer Secret'.

- Copy the webapp to <APIM_HOME>/repository/deployment/server/webapps directory

  `cp /root/resources/pizzashack.war /root/apim1/wso2am-4.2.0/repository/deployment/server/webapps/`{{exec}}

  Check the API Manager logs and wait till the web app gets deployed.

  `tail -f /root/apim1/wso2am-4.2.0/repository/logs/wso2carbon.log`{{exec}}

  > Please note that, deploying custom webapps to WSO2 API Manager is not recomanded. You should be using a web container such as tomcat to host web apps. We are using this approach only for lab.

- Edit the web.xml and update the consumer key/secret.

  `vi /root/apim1/wso2am-4.2.0/repository/deployment/server/webapps/pizzashack/WEB-INF/web.xml`

  Look for the following section and replace the values accordingly.

  ```
  <>
    ...
    <context-param>
      <param-name>consumerKey</param-name>
      <param-value>XXXXXXXXXXXXXXXXXXXXXXXXXXXX</param-value>
    </context-param>
    <context-param>
      <param-name>consumerSecret</param-name>
      <param-value>YYYYYYYYYYYYYYYYYYYYYYYYYYYY</param-value>
    </context-param>
    ...
  <>

  ```
  Once done, save the file and exit from the editor. Check the WSO2 API Manager logs again. You will notice the web app is redepoying after the update.

- Go to the pizzashack web app

  {{TRAFFIC_HOST1_80}}/pizzashack/login.jsp

  Login with the 'admin' user

Continue to the next section.