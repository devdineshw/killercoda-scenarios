- Go to the API Publisher portal and login in with a user who has creator permissions. 

  Note: You need 'creator' permission to create APIs and 'publisher' permission to perform the publish operation. For this lab, you could use the `admin` user, who has all the permissions.

  {{TRAFFIC_HOST1_80}}/publisher

- By default, you will be in the API page, You could switch to the API page from the left side bar or by clicking the API Manager logo if you are not already in the API page.

- Click 'Rest API' and select 'Start from Scrach' option from the fresh API Manager environment. You will see a 'Create API' button in the home page when you have already created APIs.

- Provide the below information in the API creation page and click 'Create' button. Following are the most basic information required to create an API.

  - Name: `PizzaShack` 
  - Context: `/pizzashack`
  - Version: `1.0.0`
  - Endpoint: `https://localhost:9443/am/sample/pizzashack/v1/api/`
  
  Once the API is created, you will be redirected to the API overview page. 

- Go to the 'Basic Info' tab under the 'Portal Configurations' section in the left menu.

  Provide teh following details.
  - Thumbnail Image: Download the PizzaShack log from below url and upload it. 
  
    https://raw.githubusercontent.com/wso2/product-app-manager/master/modules/samples/PizzaShack/pizza-shack-web/src/main/webapp/images/shack-logo.png

  - Description: `PizzaShackAPI: Allows to manage pizza orders (create, update, retrieve orders)`{{copy}}
  - Publisher Access Control: 'All'
  - Developer Portal Visibility: 'Public'
  - Tags: `pizza`, `order`, `pizza-menu`
  - API Categories: leave this field blank. <i>(The categories should be defined by an Admin user through the Admin Portal. API categories allow API providers to categorize APIs that have similar attributes. When a categorized API gets published to the Developer Portal, its categories appear as clickable links to the API consumers. The API consumers can use the available API categories to quickly jump to a category of interest.)</i>
  - GitHub URL: You can leave this field blank <i>(GitHub URL will be available in the API overview page in developer portal)</i> 
  - Slack URL: You can leave this field blank <i>(Slack Channel URL will be available in the API overview page in developer portal)</i>
  - Mark the API as third party: 'No' <i>(Indicates if an API is a third party API. You can use third party APIs to expose an externally published API through API Manager.)</i>
  - Make this the default version: 'No' <i>(The default version option allows you to mark one API, from a group of API versions, as the default one, so that it can be invoked without specifying the version number in the URL.)</i>

  Once done, Click 'Save' 

- Configure the Runtime details

  Go to the 'Runtime' tab under the 'API Configurations' section in the left menu. Update the API runtume values as below.

  - Transport Level Security: Select 'HTTP', 'HTTPS'<i>(APIs  can be exposed in HTTP and/or HTTPS transport: The transport protocol on which the API is exposed. Both HTTP and HTTPS transports are selected by default. If you want to limit API availability to only one transport (e.g., HTTPS), un-check the other transport. In mutual SSL, the server validates the identity of the client so that both parties trust each other. If the Mutual SSL option is selected you can upload the certificates as necessary.)</i>
  - Application Level Security: Select 'OAuth2', 'Basic', 'ApiKey' <i>(APIs published on WSO2 API Gateway can be secured by OAuth 2.0. This is the default security available for all APIs. Basic authentication is a simple HTTP authentication scheme in which the request will contain an authorization header with a valid base64 encoded username and password. API Manager uses a self-contained JSON Web Token (JWT) as the API key. You can enable all these authentication mechanisms at the same time if required.)</i>
  - Key Manager Configuration: 'Allow all' <i>(Resident Key Manager is the default key manager available. You can plug in multiple key managers if required. 'Allow selected' option gives you the ability to allow token generation from only a selected set of key managers for this API)</i>
  - CORS Configuration: Disabled <i>(Enable CORS validation for the API)</i>
  - Schema Validation: Disabled <i>(Enables the request and response validation against the open API definition if selected.)</i>
  - Response Caching: Disabled <i>(Response caching is used to enable caching of response messages per API. Caching protects the backend systems from being exhausted due to serving the same response (for same request) multiple times. If you select the enable option, specify the cache timeout value (in seconds) within which the system tries to retrieve responses from the cache without going to the backend.)</i>
  - Maximum Backend Throughput: Unlimited <i>(Limits the total number of calls the API Manager is allowed to make to the backend. While the other throttling levels define the quota the API invoker gets, they do not ensure that the backend is protected from overuse. Hard throttling limits the quota the backend can handle.)</i>

  Once done, Click 'Save' 

Continue to the next section.