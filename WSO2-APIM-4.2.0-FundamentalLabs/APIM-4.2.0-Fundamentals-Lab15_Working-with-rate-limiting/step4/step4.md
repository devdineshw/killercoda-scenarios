Creating a custom policy
- Go to the admin portal and login as the 'admin' user

  {{TRAFFIC_HOST1_80}}/admin

- Click 'Custom Policies' under the 'Rate Limiting Policies' from the left menu, then click 'Define Policy'.

- Enter the following information and click 'Add'

    Name: `CustomRule`<br>
    Description: `Allow 5 requests per min for admin user`<br>
    Key Template: `userId:apiContext:$apiVersion`<br>
    Siddhi Query:

    ```
    FROM
      RequestStream
    SELECT
      userId, 
      ( userId == 'admin@carbon.super'  and apiContext == '/pizzashack/1.0.0' and apiVersion == '1.0.0') AS isEligible, 
      str:concat('admin@carbon.super',':','/pizzashack/1.0.0:1.0.0')as throttleKey
    INSERT INTO
      EligibilityStream;
    FROM
      EligibilityStream [isEligible==true] #throttler:timeBatch(1 min) SELECT throttleKey, (count(throttleKey) >= 5) as isThrottled, expiryTimeStamp group by throttleKey
    INSERT ALL EVENTS into ResultStream;
    ```

This policy will apply automatically to the matching API(s)/requests.

Continue to the next section.