- Open a new terminal window

    ![Scan results](../assets/resources/images/new-terminal.png)

- Connect to MySQL

  `mysql -u root -p root`{{exec}}

Sample database and table creation steps (You could create your own table structure)

- Create a schemas in the MySQL

  `CREATE database Employees CHARACTER SET latin1;`{{exec}}

- Switch to the Employee database

  `USE Employees;`{{exec}}

- Create the Employees table

  `CREATE TABLE Employees (EmployeeNumber int(11) NOT NULL, FirstName varchar(255) NOT NULL, LastName varchar(255) DEFAULT NULL, Email varchar(255) DEFAULT NULL, Salary varchar(255));`{{exec}}

- Insert sample data

  `INSERT INTO Employees (EmployeeNumber, FirstName, LastName, Email, Salary) values (1, "John", "doe", "johndoe@wso2.com", 100000);`{{exec}}

- Check inserted data

  `SELECT * from Employees;`{{exec}}


Continue to the next section.