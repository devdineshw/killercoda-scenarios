- Subscribe to the WebSocket API
    
  - Go to the Developer portal and login with a user who has subscriber permission. 
  
    For this lab, you could use the `admin` user, who has all the permissions.

    {{TRAFFIC_HOST1_80}}/publisher

  - Click the 'Chats' WebSocket API
  - Click 'Subscriptions' from the left menu and go to the subscription page.
  - Click 'Subscription and Key Generation Wizard' option available in teh top of the page.
    - Enter a 'Application Name' (e.g.: TestApp) and select the preferred 'Shared Quota for Application Tokens' (a.k.a.: Application throttling policy). Then click 'Next'
    - Keep the 'Application' option as it is and choose the Business plan(e.g.: AsyncUnlimited). Then click 'Next'
    - Click 'Next' in the 'Generate Keys' stage to create Consumer Key/Secret pair for the new application.
    - Click 'Next' in the 'Generate Access Token' stage to generate a temporary access token for the current application. You could select scopes in this stage, but in this usecase we don't have any scope to select.
    - Copy the 'Access Token' value (a JWT token) to a local editor (e.g.: notepad) as you will not be able to find this token from the UI again. Click 'Finish' to complete the wizard.

- Execute the API

  - Subscribe to notifications
    - Open a new terminal tab (Tab 2) in the playground environment.

    - Copy the following command and replace the '<accesstoken>' with the generated access token from previous step. Then, execute the command in the new terminal tab (Tab 2).

      `wscat -c ws://localhost:9099/chats/1.0.0/notifications -H "Authorization: Bearer <accesstoken>"`

      You should see an output similer to this

      ```
      Connected (press CTRL+C to quit)
      < Subscribed to notifications!
      > 
      ```

  - Trigger an event
    - Open a new terminal tab (Tab 3) in the playground environment.

    - Copy the following command and replace the '<accesstoken>' with the generated access token from previous step.Then, execute the command in the new terminal tab (Tab 3).

      `wscat -c ws://localhost:9099/chats/1.0.0/rooms/room1 -H "Authorization: Bearer <accesstoken>"`

      You should see an output similer to this

      ```
      Connected (press CTRL+C to quit)
      < You joined room1!
      > 
      ```

      If you switch to the terminal 'Tab 2', you should see a notification similar to following, everytime when you invoke the above API call, which triggers an event. 
      
      ```
      < Someone joined room1!
      ```
      
      You could try changing the room number to room2, room3, etc. and see how the notification is changing in the terminal 'Tab 2'
    


Continue to the next section.