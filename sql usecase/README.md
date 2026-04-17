Banking System Simulation (Java Project)

Project Overview

The Banking System Simulation is a Java-based application that models core banking operations such as account creation, deposits, withdrawals, fund transfers, and transaction tracking. It demonstrates real-world banking workflows using object-oriented programming principles.

---

Objectives

* Simulate core banking operations
* Manage user accounts and transactions
* Ensure secure and structured data handling
* Demonstrate object-oriented design concepts

---

Features

* Create account (Savings/Current)
* Deposit and withdraw money
* Transfer funds between accounts
* Check account balance
* Maintain transaction history
* Basic user authentication (username and password)

---

Technologies Used

* Java (Core Java)
* Object-Oriented Programming (Encapsulation, Inheritance, Abstraction)
* Collections Framework
* JDBC (MySQL) for database integration
* Swing (optional) for graphical user interface

---

Project Structure

BankingSystem/
│
├── BankSystem.java
├── DBConnection.java
├── BankGUI.java
└── README.md

---

Database Setup

1. Create database:

```id="d2y3f1"
Create database BankDB;
Use BankDB;
```

2. Create Accounts table:

```id="p4z9n2"
Create table Accounts (
    acc_no int primary key,
    name varchar(50),
    balance double,
    username varchar(50),
    password varchar(50)
);
```

3. Create Transactions table:

```id="x8q7k5"
Create table Transactions (
    id int auto_increment primary key,
    acc_no int,
    type varchar(50),
    amount double,
    date timestamp default current_timestamp
);
```

---

How to Run

1. Compile the Java files:

```id="m1k9v3"
javac *.java
```

2. Run the application:

```id="t7h2c6"
java BankGUI
```

3. Ensure MySQL server is running and database connection details are correct in `DBConnection.java`.

---

Functional Modules

Account Management

* Create new user accounts
* Store account details in database

Transactions

* Deposit money
* Withdraw money with balance validation
* Transfer funds between accounts

Balance Inquiry

* Retrieve current balance from database

Transaction History

* Store and display transaction records

---

Concepts Used

* Object-Oriented Programming (classes, methods, encapsulation)
* Database connectivity using JDBC
* SQL queries for data manipulation
* Event handling (GUI interactions)

---

Future Enhancements

* Enhanced authentication and security
* Role-based access (admin/user)
* Web-based interface
* Transaction reports and analytics
* Integration with payment gateways

---

Author

Sanjana B

---

Conclusion

This project demonstrates the implementation of a basic banking system using Java, combining object-oriented programming with database integration to simulate real-world financial operations.
