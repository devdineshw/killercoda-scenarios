- Create new API

  - Go to the publisher portal and log into the pizzashack.com tenant.

    {{TRAFFIC_HOST1_80}}/publisher

    Username: admin@pizzashack.com <br>
    Password: admin

  - Click 'SOAP API' option and click 'Import WSDL'. Use the following values and click 'Next'.

    Implementation Type: 'Passthrough'<br>
    Input Type: 'WSDL URL'<br>
    WSDL URL: `http://ws.cdyne.com/phoneverify/phoneverify.asmx?wsdl`

  - Use the following values and click 'Create'
    
    Name: `PhoneVerification`<br>
    Context: `phoneverify`<br>
    Version: `1.0`<br>
    Endpoint: `http://ws.cdyne.com/phoneverify/phoneverify.asmx`

  - Go to 'Deployments' page and deploy a new revision.

  - Go to the 'Overview' page and click on 'Publish' button to publish the API


Continue to the next section.