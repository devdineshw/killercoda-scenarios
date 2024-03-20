- Go to the API Publisher portal and login in with a user who has creator permissions. 

  Note: You need 'creator' permission to create APIs and 'publisher' permission to perform the publish operation. For this lab, you could use the `admin` user, who has all the permissions.

  {{TRAFFIC_HOST1_80}}/publisher

- Create a WebSocket API

  - Initiate WebSocket API creation flow

    - Option 1: Click 'Streaming API' and Click 'Web Socket API' from the API publisher landing page

    - Option 2: Click 'Create API' and select 'WebSocket API' option under the 'Streaming API' section, when you have already created APIs.

  - Use the following details in the API create page

    - Name: `Chats`
    - Channel: `/chats`
    - Version: `1.0.0`
    - Protocol: WebSocker
    - Endpoint: `ws://localhost:8080`
    
    Then click the 'Create' button

  - Add topics to the WebSocket API
    
    - Click 'Topics' under the 'Develop' > 'API Configurations' menu
    - Click the delete button in both default '/*' topics to mark for deletion.
    - Add the following topics to the API

      ```
      Type             Topic Name
      -------------------------------------
      PUB, SUB         /notifications
      PUB, SUB         /rooms/{roomID}
      ```
      
    - Expand the each newly added topic and update the 'Runtime' > 'URL Mapping' according to below table 

      ```
      Topic Name         URL Mapping                 
      -----------------------------------------------
      /notifications     /notifications
      /rooms/{roomID}    /rooms?room={uri.var.roomID}
      ```
    - Once done, click 'Save'
    
  - Attach a business plans
    - Go to the 'Subscriptions' page under 'Develop' > 'Portal Configurations'

    - Select preferred business plan/s from the page. Choose 'AsyncUnlimited' or 'AsyncGold' for this lab.
    
    - click 'Save'

  - Deploy the API
    - Go to the 'Deployments' page under the 'Deploy' section of the left menu
    - Choose the preferred gateway environment to deploy this WebSocket API. Select 'Default' gateway for this lab.

    - Click 'Deploy'

- Publish the WebSocket API
  - Go to the 'LifeCycle' page under 'Publish' section of the left menu.

  - Click 'Publish' button to perform the publish operation.


Now your WebSocket API is ready for testing


Continue to the next section.