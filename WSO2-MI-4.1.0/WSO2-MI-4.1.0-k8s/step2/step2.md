- Start the micro integrator dashborad

    - move to the MI dashboard directory

        `cd /root/mi1/wso2mi-dashboard-4.1.0/bin/`{{exec}}

    - Start the service in background
        
        `./dashboard.sh start`{{exec}}

    - Tail the logs
        
        `tail -f ../logs/wso2carbon.log`{{exec}}

        You could stop the tail with `Ctrl+C`

Continue to the next section.