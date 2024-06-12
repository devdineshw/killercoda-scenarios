- Open Choreo Insights to view the dashboards.

  https://console.choreo.dev/insights/overview

  - In the 'Insights' page, click 'Alert Configuration' to open the alert configuration page.

  - Click 'Traffic' tab.

  - Verify that you are in the correct organization, and select the required environment.

  - In the 'API Name' field, select the API for which you want to configure the alert.

    Note: Only the APIs that you have invoked at least once are listed here. For other APIs, you need to give the API name in the required format as instructed in the UI.

  - In the 'Metric' field, select the required metric against which you want to evaluate the alert configuration.

    Note: The list includes all available options. If there are multiple metrics, you can select the required metric. If there is only one metric to select, that metric is selected by default, and the field is disabled.

  - In the 'Threshold' field, specify the threshold number of requests per minute.

  - If required, specify the list of emails that should be notified when the alert is generated in the 'Emails' field.

  - Click 'Add'.

    More details about the alert configuration in Choreo analytics can be found in the <a href="https://wso2.com/choreo/docs/monitoring-and-insights/alerts/configure-alerts/" target="_blank">documentation</a>


- Testing the alert configuration

  - Go to the developer portal and invoke the API beyond the limit you configured in the Choreo cloud. You should receive an email alert after that.

Continue to the next section.