A sample web app is already available in this lab environment. Follow the steps given below to deploy the webapp and test it.

- Go to the API developer portal and login with the user you created in the previous step.

  {{TRAFFIC_HOST1_80}}/devportal

- Go to the 'DefaultApplication' which we subscribed to the 'PizzaShack' API. Copy the 'Consumer Key' and 'Consumer Secret'.

- Copy the webapp to <APIM_HOME>/repository/deployment/server/webapps directory

  `cp /root/resources/pizzashack.war /root/apim1/wso2am-4.2.0/repository/deployment/server/webapps/`{{exec}}

  Check the API Manager logs and wait till the web app gets deployed.

  `tail -f /root/apim1/wso2am-4.2.0/repository/logs/wso2carbon.log`{{exec}}

  ```
  INFO {org.wso2.carbon.webapp.mgt.TomcatGenericWebappsDeployer} - Deployed webapp: StandardEngine[Catalina].StandardHost[localhost].StandardContext[/pizzashack].File[/root/apim1/wso2am-4.2.0/repository/deployment/server/webapps/pizzashack.war]
  ```

  > Please note that, deploying custom webapps to WSO2 API Manager is not recomanded. You should be using a web container such as tomcat to host web apps. We are using this approach only for lab.

- Edit the web.xml and update the consumer key/secret.

  `vi /root/apim1/wso2am-4.2.0/repository/deployment/server/webapps/pizzashack/WEB-INF/web.xml`{{exec}}

  Look for the following section and replace the values accordingly.

  ```
  <web-app>
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
  </web-app>

  ```
  Once done, save the file and exit from the editor. Check the WSO2 API Manager logs again. You will notice the web app is redepoying after the update.

  ```
  INFO {org.wso2.carbon.webapp.mgt.AbstractWebappDeployer} - Reloaded Context with name: /pizzashack
  ```

- Go to the pizzashack web app

  {{TRAFFIC_HOST1_80}}/pizzashack/login.jsp

  Login with the 'admin' user and try the app. This web page is making API calls behind the scence to the API Manager 'PizzaShack' API.
  
  - Home page is populated with the 'GET /menu'
  - Order Now feature is using 'POST /order'
  - My Orders page is using 'GET /order/{orderId}'

Continue to the next section.