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
  Click 'Save' to apply the changes.


- Configuring scopes
  - Creating the Scopes
  
    - Go to the 'Local scopes' page under 'Develop' > 'API Configurations' menu

    Note: Scopes created from this page will be available only for this specific API, hence called 'Local Scope'. You could create global scopes, which could be used with any API, from the 'Scopes' tab in the Publisher home page left side bar.

    - Click 'Create Scope' button and enter the following values.
      
      - Name : `order_pizza`
      - Display Name: `Order Pizza`
      - Description: `Only users with admin role and internal/subscriber role can order`
      - Roles: `admin`, `Internal/subscriber` <i>(Press enter after typing each role)</i>

      Then, clieck 'Save'

  - Appling scopes

    - Go back to 'Develop' > 'API Configurations' > 'Resources'

    - Click and expand the 'POST /order' resource.
    - Click the 'Operation scope' dropdown under the 'Operation Governance' section and select 'order_pizza' scope.
    - Click 'Save' button in the bottom of the page.

- Add Documentation

  - Go to the 'Documents' page under the 'Develop' > 'Portal Configuration' menu.
  - Click 'Add new Document' option
  - Use the following details to create a new API document.

    - Name: `PizzaShack`
    - Summary: `This is the official documentation for the PizzaShack API`
    - Type: 'How To'
    - Source 'Inline'

    Then click 'Add Document' button

  - select 'Add content' from the dialog box and use the following as the content

    `This is the Pizza Shack API official documentation page`

    Click 'Update content' to persist the changes.
    

Continue to the next section.