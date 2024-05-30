Start the micro integrator

- move to the MI directory

    `cd /root/mi1/wso2mi-4.1.0/bin/`{{exec}}

- Start the service in background
    
    `./micro-integrator.sh start`{{exec}}

- Tail the logs
    
    `tail -f ../repository/logs/wso2carbon.log`{{exec}}


Start the micro integrator dashborad

- move to the MI directory

    `cd /root/mi1/wso2mi-dashboard-4.1.0/bin/`{{exec}}

- Start the service in background
    
    `./dashboard.sh start`{{exec}}

- Tail the logs
    
    `tail -f ../logs/wso2carbon.log`{{exec}}

Continue to the next section.