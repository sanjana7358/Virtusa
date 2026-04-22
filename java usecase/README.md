Password Validator (Java)

Project Overview

The Password Validator is a Java-based application that checks whether a given password meets specific security criteria. It helps ensure strong password creation by validating length, characters, and complexity rules.



Objectives

* Validate user passwords based on defined rules
* Ensure strong and secure password creation
* Provide feedback for invalid passwords



Features

* Minimum length validation
* Checks for uppercase and lowercase letters
* Ensures presence of digits
* Displays appropriate error messages
* Confirms valid password



Technologies Used

* Java (Core Java)
* OOP Concepts
* String Handling
* Conditional Statements (if-else)



Project Structure

PasswordValidator/
│
├── PasswordValidator.java
└── README.md



How to Run

1. Compile the program:

```id="1q0j4g"
javac PasswordValidator.java
```

2. Run the program:

```id="e8p4t1"
java PasswordValidator
```



Sample Output

```id="o7b9dk"
Enter Password: Sanjana@123

Password is Valid ✅
```

OR

```id="bbn5c9"
Enter Password: abc

Password must be at least 8 characters long
Must contain uppercase letter
Must contain a digit
Must contain special character
```



Concepts Used

* String validation
* Loops and condition checking
* Character analysis
* User input handling



Future Enhancements

* GUI version (Java Swing/JavaFX)
* Password strength meter
* Database storage for users



Author

Sanjana B



Conclusion

This project demonstrates basic password validation techniques and highlights the importance of strong password security using Java.
