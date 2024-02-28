- Copy the required resources to server
  - create a directory for images and copy the log file under the devportal

    `mkdir apim1/wso2am-4.2.0/repository/deployment/server/webapps/authenticationendpoint/extensions/images`{{exec}}

    `cp resources/devportal/logo.png apim1/wso2am-4.2.0/repository/deployment/server/webapps/authenticationendpoint/extensions/images/`{{exec}}

- Update the styling
  - make a copy of the default header file to extensions directory

    `cp apim1/wso2am-4.2.0/repository/deployment/server/webapps/authenticationendpoint/includes/header.jsp apim1/wso2am-4.2.0/repository/deployment/server/webapps/authenticationendpoint/extensions/`{{exec}}

  - Open and update the styling, find and update the line as below

    `vi apim1/wso2am-4.2.0/repository/deployment/server/webapps/authenticationendpoint/extensions/header.jsp`{{exec}}

      ```
      String headerTitle = "Eatalion Pizza";
      String pageTitle = "Eatalion Pizza Login";
      String footerText = "Eatalion Pizza";
      String faviconSrc = "extensions/images/favicon.ico";
      String logoSrc = "extensions/images/logo.png";
      String logoHeight = "50";
      String logoWidth = "250";
      String logoAltText = "Eatalion Pizza";
      ```{{copy}}

  - [Optional] A CSS file also could be imported to have more custom styles

      `File customCSSFile = new File("extensions/css/tn.css");`

  - Save the file and Start teh WSO2 APIM server. Then try the login page again. 
  
  > NOTE: Similarly you could customize the accountrecoveryendpoint, which is the app provides self registration, password reconvary, etc.

Continue to the next section.