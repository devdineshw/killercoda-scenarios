- Open the deployment.toml file of the WSO2 API Manager

  `vi /root/apim1/wso2am-4.2.0/repository/conf/deployment.toml`{{exec}}

- Add the application sharing configurations

  ```
  [apim.devportal]
  enable_application_sharing = true
  application_sharing_type = "default"
  ```

Continue to the next section.
