We are trying to allow access to our web app based on the User IP, as we don't have any other athenticators configured with the API Manager. 

If you configure another authenticator such as SMS OTP, Email OTP, TOTP, you could have MFA (Multi factor authentication) enabled for your web app using this approach.

- Go to the carbon management console and login in

  {{TRAFFIC_HOST1_80}}/carbon

- Go to Service Providers > List. Click 'Edit' next to the generated service provider for the web application.

- Update the application

  - Expand the 'Local and Outbound Authentication Configuration'.

  - Select the 'Advanced Configuration' option under the 'Authentication Type'

  You will be redirected to the Authenticator configuration page.

  - Expand the 'Script Based Adaptive Authentication' option

  - Copy and paste the below script in the script editor.

```
var corpNetwork = ['10.0.0.0/8'];

var onLoginRequest = function(context) {
    executeStep(1, {
        onSuccess: function (context) {
            var user = context.currentKnownSubject;
            // Extracting the origin IP of the request
            var loginIp = context.request.ip;
            Log.info('User: ' + user.username + ' logged in from IP: ' + loginIp);
            // Checking if the IP is within the allowed range
            if (!isCorporateIP(loginIp, corpNetwork)) {
                var parameterMap = {'errorCode': 'access_denied', 'errorMessage': 'login could not be completed', "errorURI":'http://www.example.com/error'};
                fail(parameterMap);
            }
        }
    });
};

var convertIpToLong = function(ip) {
    var components = ip.split('.');
    if (components) {
        var ipAddr = 0, pow = 1;
        for (var i = 3; i >= 0; i -= 1) {
            ipAddr += pow * parseInt(components[i]);
            pow *= 256;
        }
        return ipAddr;
    } else {
        return -1;
    }
};

var isCorporateIP = function(ip, subnets) {
    var subnetLength = subnets.length;
    for (var i = 0; i < subnetLength; i++) {
        var subnetComponents = subnets[i].split('/');
        var minHost = convertIpToLong(subnetComponents[0]);
        var ipAddr = convertIpToLong(ip);
        var mask = subnetComponents[1];
        if (subnetComponents && minHost >= 0) {
            var numHosts = Math.pow(2, 32 - parseInt(mask));
            if ((ipAddr >= minHost) && (ipAddr <= minHost + numHosts - 1)) {
                return true;
            }
        }
    }
    return false;
};
```
  
  - Click 'Update' from the bottom of the page and click 'Update' again in the service provider page.

  - Try to logout and login into the application again. You will be able to login as the LB IP is within the 10.x.x.x range.

  Now you could go back to the script and update the IP range to 192.0.0.0/8 and test the app again.


Continue to the next section.