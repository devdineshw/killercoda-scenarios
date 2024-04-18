- Transfering the Application ownership
    - Go to the Admin portal and login in with 'admin' user. 

        {{TRAFFIC_HOST1_80}}/admin

    - Click 'Settings' > 'Applications' from the left side menu

    - Click 'Edit' icon next to the 'PizzaOrderApp'

    - You will see the name of current owner 'admin', Change it to 'peter' and click 'Save'.

- Validate the Application transfer

    - Go to the devportal and login in with 'peter'

    {{TRAFFIC_HOST1_80}}/devportal

    - Check the application list and see whether full access is granted for the application.


Note: You can disable the automatic 'DefaultApplication' creation for each devportal user by adding the following configuration into the tenant-config.json from the carbon management console
    
```
"DisableDefaultApplicationCreation" : true
```

Continue to the next section.