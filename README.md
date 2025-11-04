# AI-BEGINNER


# 🧮 Simple Calculator in Ruby

A beginner-friendly command-line calculator built with Ruby.
This program demonstrates **basic arithmetic operations**, **function use**, **user input handling**, and **code organization** — all while keeping the structure simple and readable.

---

## 📖 Table of Contents

1. [Overview](#overview)
2. [Features](#features)
3. [How It Works](#how-it-works)
4. [Code Structure](#code-structure)
5. [Installation & Setup](#installation--setup)
6. [Usage Instructions](#usage-instructions)
7. [Sample Output](#sample-output)
8. [Possible Improvements](#possible-improvements)
9. [Author](#author)

---

## 🧩 Overview

This project is a simple, interactive calculator written in **Ruby**.
It takes two numeric inputs from the user and performs:

* Addition
* Subtraction
* Multiplication
* Division (with zero-handling)
* Modulus
* Square of each number
* Power (exponentiation)

It’s ideal for beginners learning how to:

* Read user input in Ruby
* Define and call functions
* Perform arithmetic operations
* Organize and document Ruby scripts

---

## ✨ Features

✅ Perform **five core arithmetic operations**
✅ Compute **square** and **power** values
✅ Handle **division by zero** gracefully
✅ Display **formatted results** for clarity
✅ Include **modular, reusable methods** for maintainability

---

## ⚙️ How It Works

1. The program welcomes the user.
2. It prompts for **two numeric inputs**.
3. It performs and displays:

   * Basic arithmetic results (addition, subtraction, etc.)
   * Advanced operations (square and power)
4. The results are printed neatly in the terminal.

The main flow is sequential and user-friendly, perfect for small demos or learning exercises.

---

## 🧱 Code Structure

| Section                                | Function       | Description                                                  |
| -------------------------------------- | -------------- | ------------------------------------------------------------ |
| `get_number(prompt)`                   | Input Handling | Prompts user and converts input to a float.                  |
| `display_basic_operations(num1, num2)` | Arithmetic     | Prints results of +, -, *, /, %. Handles division by zero.   |
| `square(number)`                       | Utility        | Returns the square of a given number.                        |
| `power(base, exponent)`                | Utility        | Raises one number to the power of another using loops.       |
| Main Program                           | Execution      | Orchestrates user input, function calls, and result display. |

---

## 💻 Installation & Setup

### 1️⃣ Prerequisites

Make sure Ruby is installed on your system:

```bash
ruby -v
```

If not installed, download Ruby from [ruby-lang.org](https://www.ruby-lang.org/en/downloads/).

### 2️⃣ Download the Project

Clone or download the project to your local machine:

```bash
git clone https://github.com/yourusername/simple-ruby-calculator.git
cd simple-ruby-calculator
```

### 3️⃣ Run the Calculator

Execute the program with:

```bash
ruby calculator.rb
```

---

## 🚀 Usage Instructions

1. When prompted, **enter two numbers**.
2. The program displays results for:

   * Addition, subtraction, multiplication, division, and modulus.
3. It then shows:

   * The square of each number.
   * The first number raised to the power of the second.

---

## 🧾 Sample Output

```
🧮 Welcome to the Ruby Simple Calculator!
Please enter the first number: 5
Please enter the second number: 2

--- Basic Operations ---
5.0 + 2.0 = 7.0
5.0 - 2.0 = 3.0
5.0 * 2.0 = 10.0
5.0 / 2.0 = 2.5
5.0 % 2.0 = 1.0

--- Additional Operations ---
The square of 5.0 is 25.0
The square of 2.0 is 4.0
5.0 raised to the power of 2.0 is 25.0

✅ Calculation complete!
```

---

## 🔧 Possible Improvements

If you want to expand the project:

* ✅ Add support for **more operations** (e.g., square root, logarithm)
* ✅ Implement an **interactive menu** system
* ✅ Include **error handling for invalid inputs (non-numeric)**
* ✅ Add **tests** using RSpec for verification
* ✅ Store **calculation history** in a file

---

## 👩‍💻 Author

*
🎓 Beginner Ruby Developer

🌐 [GitHub Profile](https://github.com/Tribrit)
