# cinema project

Cinema project is a school project : model a database for a future cinema booking software. 

***

## Table of Contents
1. [General Info](#general-info)
2. [Build with](#build_with)
3. [Installation](#installation)
4. [Run](#run)
5. [Create a user](#create-a-user)
6. [Create tables](#create-tables)
7. [Insert data](#insert-data)
8. [Verifications](#verifications)
9. [Back up](#backup)
10. [Restore](#restore)
11. [Author](#author)
12. [License](#license)

***

## General Info

At first create the model of the database using the MERISE method (MCD MLD MPD). Then, create the database using the database management system MariaDB. 

***

## Build with 

* [Diagrams.net](https://app.diagrams.net/)
* [MariaDB Server version: 10.8.3-MariaDB Homebrew](https://mariadb.com/kb/en/documentation/)  
* [DBeaver Community](https://dbeaver.io/download/)

***

## Prerequisite

* [Homebrew](https://brew.sh/index_fr)
* [MAMP](https://www.mamp.info/en/downloads/)

***

## Installation

Install MariaDB. 
If you don’t already have MariaDB installed, go to [Installing MariaDB server](https://mariadb.com/kb/en/installing-mariadb-on-macos-using-homebrew/) and follow the instructions.

Open a terminal and use : 
`$ brew install mariadb`

***

## Run

Go to Applications/MAMP/Library/bin and open a new terminal. 

Start the server : 

`$ brew services start mariadb`

To stop the server, use : 

`$ brew services stop mariadb`

Connect to the database : 

`$ mysql`

Create the database : 

`CREATE DATABASE cinema;`

Check if the database is created : 

`SHOW DATABASES;`

***

## Create a user

Create a new user (for instance username) with a new password :

`CREATE USER username@localhost IDENTIFIED BY 'username';`

Check if the user is created :

`SELECT user,host FROM mysql.user;`

Allow the rights for this user (here are all rights for the CRUD): 

`GRANT ALL PRIVILEGES ON cinema.* TO username@localhost;`

Check the rights of the user :

`SHOW GRANTS FOR username@localhost;`

Log out : 

`quit;`

Log in as username : 

`mysql -u username -p` 

Enter your password

Choose the database :

`USE cinema;`

***

## Create tables 

To create the tables in the database, use the SQL scripts of the sql_queries/create_table file.

***

## Insert data 

To insert data in these tables, use the SQL scripts of the sql_queries/cinsert_into file. 

***

## Verifications 

To check if the model and the data are correct, use the SQL queries of the sql_queries/verification_queries with DBeaver. 

***

## Back up

Export the database with mysqldump. It is installed with the installation of MariaDB : 

`mysqldump -u username -p cinema > cinema_export.sql` 

Enter the password

The file is in the current folder. To see it, use : 

`cat cinema_export.sql`

Copy the back up in the project : 

`cp cinema_export.sql path/to/Copy/cinema_project`

***

## Restore

Create a new database : 

`CREATE DATABASE cinema2;`

Allow all rights to the user :

`GRANT ALL PRIVILEGES ON cinema2.* TO username@localhost;`

Quit :

`quit;`

To import the database, use : 

`mysql -u username -p cinema2 < cinema_export.sql`

To check the database, use:

`USE cinema2;`

`SHOW TABLES;`

`DESCRIBE Clients;`

***

## Author 

Melissa-code

***

## License 

MIT 