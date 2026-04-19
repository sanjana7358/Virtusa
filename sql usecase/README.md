Retail Insights Data Analyst (SQL Project)

Project Overview

This project simulates a real-world business scenario for a retail supermarket chain, "FreshMart." The goal is to analyze inventory and sales data to identify inefficiencies such as overstocking and unsold products.

The system generates a **Stock Health Report** to help optimize inventory management and improve revenue.



Business Problem

FreshMart is facing two major issues:

* Overstocking items that do not sell
* Running out of items that are in demand

To solve this, a data-driven approach is required to analyze product performance and inventory health.



Objectives

* Identify products nearing expiration
* Detect dead stock (unsold items)
* Analyze category-wise revenue contribution
* Support better inventory decision-making



Database Schema

The project uses three main tables:

1. Products

* ProductID (Primary Key)
* ProductName
* CategoryID (Foreign Key)
* ExpiryDate
* StockCount

2. Categories

* CategoryID (Primary Key)
* CategoryName

3. SalesTransactions

* TransactionID (Primary Key)
* ProductID (Foreign Key)
* QuantitySold
* TransactionDate



Key Features / Queries

1. Expiring Soon Products

Find products that:

* Expire within the next 7 days
* Have stock greater than 50

2. Dead Stock Analysis

Identify products that:

* Exist in inventory
* Have **no sales transactions in the last 60 days**

3. Revenue Contribution

Calculate:

* Total revenue per category
* Identify the category generating the highest revenue



Technologies Used

* SQL (MySQL / any relational DB)
* Basic database design concepts
* Aggregate functions (SUM, GROUP BY)
* Joins and subqueries



How to Run

1. Open your SQL environment (MySQL Workbench / CLI)
2. Run the SQL script:

   * Create tables
   * Insert sample data
   * Execute queries
3. View results in result grid



Sample Output

* List of products expiring soon
* Dead stock items (unsold products)
* Category-wise revenue report



Concepts Covered

* Database schema design
* Joins and relationships
* Aggregate functions
* Filtering and date conditions
* Real-world data analysis



Future Enhancements

* Add dashboard visualization (Power BI / Tableau)
* Automate alerts for expiring products
* Integrate with frontend (web app)
* Add predictive analytics for demand



Author

Sanjana B



Conclusion

This project demonstrates how SQL can be used to solve real-world business problems by analyzing inventory and sales data. It helps improve decision-making and operational efficiency in retail systems.
