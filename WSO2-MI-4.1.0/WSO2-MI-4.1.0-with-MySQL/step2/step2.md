- Configure the database

    - Connect to MySQL. Enter 'root' as the password

        `mysql -u root -p`{{exec}}

    - Create a schemas and switch the new schema

        `CREATE database MI_USER_DB CHARACTER SET latin1;`{{exec}}

        `USE MI_USER_DB;`{{exec}}

    - Import the Table structure

        `source /root/mi1/wso2mi-4.1.0/dbscripts/mysql/mysql_user.sql;`{{exec}}

    - Exit from the MySQl sesion

        `exit`{{exec}}

- Update the MI configuration to use RDBMS User store

    - Open the configuration file

        `vi /root/mi1/wso2mi-4.1.0/conf/deployment.toml`{{exec}}

    - Comment the existing file base used store

        ```
        [internal_apis.file_user_store]
        enable = false
        ```

    - Add the User store DB connection

        ```
        [[datasource]]
        id = "WSO2CarbonDB"
        url= "jdbc:mysql://localhost:3306/MI_USER_DB"
        username="root"
        password="root"
        driver="com.mysql.jdbc.Driver"
        pool_options.maxActive=50
        pool_options.maxWait = 60000
        pool_options.testOnBorrow = true
        ```

    - Replace the existing user store configuration with following

        ```
        [user_store]
        class = "org.wso2.micro.integrator.security.user.core.jdbc.JDBCUserStoreManager"
        type = "database"
        ```
    - Save the file

- Restart the micro integrator

    - move to the MI directory

        `cd /root/mi1/wso2mi-4.1.0/bin/`{{exec}}

    - Start the service in background
        
        `./micro-integrator.sh restart`{{exec}}

    - Tail the logs
        
        `tail -f ../repository/logs/wso2carbon.log`{{exec}}

        You could stop the tail with `Ctrl+C`

Continue to the next section.