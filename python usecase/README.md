FareCalc - Travel Fare Optimizer (Python Project)

Project Overview

FareCalc is a Python-based application designed to simulate a ride-sharing fare calculation system. It calculates the final ride cost based on distance, vehicle type, and time of day using surge pricing.

This project mimics real-world ride-hailing platforms like Uber and Ola, where pricing dynamically changes based on demand and conditions.



Business Problem

A ride-sharing startup, "CityCab," needs an efficient backend system to calculate fares. The fare varies depending on:

* Distance traveled
* Type of vehicle selected
* Time of day (peak hours)

The goal is to provide accurate and dynamic pricing for users.



Objectives

* Calculate fare based on distance and vehicle type
* Apply surge pricing during peak hours
* Handle invalid inputs gracefully
* Generate a formatted price receipt

---

Features

* Supports multiple vehicle types (Economy, Premium, SUV)
* Dynamic fare calculation using dictionary mapping
* Surge pricing (1.5x multiplier during peak hours)
* Error handling for invalid vehicle types
* User-friendly console interaction
* Formatted output receipt



Pricing Logic

Base Rates (per km)

* Economy → 10
* Premium → 18
* SUV → 25

Surge Pricing

* Peak Hours: 17 to 20 (5 PM to 8 PM)
* Surge Multiplier: 1.5x



Example Calculation

Distance: 10 km
Vehicle: Premium
Time: 18 (Peak Hour)

Base Fare = 10 × 18 = 180
Final Fare = 180 × 1.5 = 270



Technologies Used

* Python 3
* Dictionaries
* Functions
* Conditional Statements
* Exception Handling



How to Run

1. Open terminal in project folder
2. Run the script:

```
python3 farecalc.py
```

3. Enter:

   * Distance (in km)
   * Vehicle type (Economy / Premium / SUV)
   * Hour of day (0–23)



 Sample Output

```
===== FARE RECEIPT =====
Distance: 10 km
Vehicle: Premium
Time: 18

Base Fare: ₹180
Surge Applied: Yes (1.5x)

Final Fare: ₹270
========================
```


Concepts Covered

* Dictionary mapping
* Function creation
* Input validation
* Error handling (try-except)
* Real-world pricing logic



Future Enhancements

* Add GUI using Tkinter
* Integrate GPS-based distance calculation
* Add user authentication system
* Convert into web application (Flask)



Author

Sanjana B



Conclusion

FareCalc demonstrates how dynamic pricing systems work in real-world applications. It combines Python fundamentals with practical problem-solving to create an efficient and user-friendly fare calculation system.
