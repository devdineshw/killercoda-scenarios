By default, an application you create in the developer portal will not be visible to any other user. In an organization, where we have a group of people who manages a project, this is not optimal due to few reasons.

 - Sharing credentials is not an option as it is NOT a best practice and a security concern.
 - Team has to depends on a single person to perform application related operations such as subscribing to a new API, change a subscription tier, etc.
 - Risk of loose access to the application, if the application owner leaves the organization without making any prior arrangements.

WSO2 API Manager provides the facility for users to share their applications and subscriptions with a specific logical group or groups such as an organization.

Default application sharing implementation is sharing the applications based on the 'organization' claim value of the user. This logic could be changed and implement your own application sharing logic by following the steps in the official <a href="https://apim.docs.wso2.com/en/4.2.0/consume/manage-application/sharing-applications/sharing-applications/">documentation</a>

> **_NOTE:_** Please wait until the playground is ready to start the scenario. Usually it will take around 3 mins to load.
