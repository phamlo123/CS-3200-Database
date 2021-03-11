# CS-3200-Database

* Contains DDL, DML, and the Application Source Code for the YaTV.app
* This Project was created using MySQL for the DDL and DML of the Database and using Java for the command-line application


## Project.sql
The Project.sql file contains the MySQL code (DDL and DML dump) of our YaTV Database
* This Database was created in phpMyAdmin using the XAMPP web server
* Written in MySQL 
 

## YaTV_app
This folder contains the application source code to our Java command-line application.
* Within this folder there is the YatvApp Class, in which our main method exists.
* The conn_test Class tests the users connection to the Project database.
* The BCrypt Class is used for adding a salt to the users password and hashing the salted hash.
* The out folder contains MySQL JDBC driver jar file: mysql-connector-java-8.0.22.jar \
\
Usage: 
> $ java -cp .:mysql-connector-java-8.0.22.jar YatvApp <query #>


## Links
[System Walkthrough](https://youtu.be/4NHf6i5qyLM) \
[Demo Video](https://youtu.be/yUJdCshgL_4)
