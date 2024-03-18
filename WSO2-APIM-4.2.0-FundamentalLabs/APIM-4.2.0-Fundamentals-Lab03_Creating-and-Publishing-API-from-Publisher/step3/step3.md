- Configure Resources

  Go to the 'Resources' tab under the 'API Configurations' section in the left menu. 

  - By default API manager adds the '/*' resource when you create an API from scratch.  You could click 'Mark all for delete' option to remove all the default resources when you save the API. Mark all for delete and add the following resources.

  ```
  HTTP Verb        URL Pattern
  -------------------------------------
  GET              menu           
  POST             order          
  GET, PUT         order/{orderid}
  ```

- Configure the Scopes.
  - 
    

Continue to the next section.