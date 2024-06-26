- Start the LDAP service. We are going to use the LDAP service available within the WSO2 Identity Server 5.11.0 for this lab.

    `sh /root/ldap/wso2is-5.11.0/bin/wso2server.sh start`{{exec}}

    Wait few seconds and check the logs. Wait till the server starts.

    `tail -f /root/ldap/wso2is-5.11.0/repository/logs/wso2carbon.log`{{exec}}

    user 'Ctrl+c' to exit from the logs

Continue to the next section.
