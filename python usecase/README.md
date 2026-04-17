SmartPay Utility Bill Generator (FareCalc)

Project Overview

The SmartPay Utility Bill Generator is a Java-based application that calculates electricity or water bills based on units consumed. It uses progressive slab rates and applies tax to encourage efficient resource usage.

---

Objectives

* Calculate bill based on units consumed
* Apply slab-based pricing logic
* Validate meter readings
* Generate a formatted digital receipt
* Handle multiple customer inputs

---

Features

* Slab-based billing system
* Input validation (prevents incorrect readings)
* Digital receipt generation
* Continuous input until user exits
* Interface-based design (Billable interface)

---

Technologies Used

* Java (Core Java)
* OOP Concepts (Interface, Classes, Methods)
* Conditional Statements (if-else)
* Scanner (User Input)

---

Project Structure

FareCalc/
│
├── SmartPay.java
└── README.md
|__FareCalc-Output.png

---

How to Run

1. Compile the program:

```id="g3u9cj"
javac SmartPay.java
```

2. Run the program:

```id="b0i1y5"
java SmartPay
```

---

Sample Output

```
Enter Customer Name: Sanjana
Enter Previous Meter Reading: 100
Enter Current Meter Reading: 250

===== DIGITAL RECEIPT =====
Customer Name: Sanjana
Units Consumed: 150
Tax Amount: $30.0
Total Bill: $330.0
===========================
```

---

Concepts Used

* Interface implementation
* Encapsulation
* Looping (while loop)
* Conditional logic (if-else slabs)
* Input validation

---

Future Enhancements

* GUI version (Java Swing/JavaFX)
* Database integration (JDBC + MySQL)
* Multi-utility billing (Electricity + Water)
* Export bill as PDF

---

Author

Sanjana B

---

Conclusion

This project demonstrates how real-world billing systems work using Java, incorporating structured logic, validation, and user interaction.
