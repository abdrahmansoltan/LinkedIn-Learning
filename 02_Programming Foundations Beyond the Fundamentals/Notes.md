## INDEX

- [INDEX](#index)
- [collections](#collections)
- [using external code](#using-external-code)
- [strings](#strings)
- [planning a program](#planning-a-program)
- [debugging](#debugging)
  - [runtime error](#runtime-error)
  - [symantic error is also known as **Logic error**](#symantic-error-is-also-known-as-logic-error)
- [Debugging code in an IDE](#debugging-code-in-an-ide)
- [object oriented programming](#object-oriented-programming)
- [Advanced topics](#advanced-topics)

---

## collections

- a collection in programming lets me group similar items together using a single name, which is known as a variable.

---

## using external code

The most basic type of shared code in Python is called a **module**.

- A Python module is a Python file that contains code, like variables or functions.
- multiple modules together are called a **package** or **library**
- **Framework** is when a set of code is not just used together but used in a specific way **as it set the basic structure and flow of your program**

---

## strings

- **regular expression** lets you create a description of a pattern that you want to match
- it's also known as **Regex**:
  - can be made up of letters, numbers and special characters. But within a regular expression each character has a specific meaning and you can put them together to describe exactly what you need.

---

## planning a program

- **style guides**: Documentation on approaches to code
- **Pseudocode**: writing a description of what you're trying to do using plain language

---

## debugging

The process of identifying and fixing bugs

---

### runtime error

- ex: include a call to a function that isn't ever defined. A function call is a valid statement. But when the interpreter tries to run your code, it won't be able to find and execute the function specified in your function call. This type of bug is known as a run-time error **because it often isn't obvious until the code is actually run**.

### symantic error is also known as **Logic error**

## Debugging code in an IDE

- **Linting**: IDE can check code for bugs before you even execute it
- goal of creating test cases: to test all the possible cases that my code could encounter when it's used

## object oriented programming

Object-oriented code is a strategy that helps you organize code when it starts to feel needlessly complex.

- Why aren't all possible methods made available to every object? >> to avoid overloading computer memory with unneeded methods
- When do you need to use an object-oriented approach to coding? >> when you start building bigger projects with more complex code

## Advanced topics

1. **Memory management** it's important when a program is running that anything that's no longer needed gets removed from memory and thrown out, to free up that space for future manipulation.
2. **Memory leak** it's where the amount of memory used by a program continues to grow unnecessarily.
3. **garbage collection** This is an automated process in which the compiler keeps track of which items in memory are no longer needed and deletes them.
4. structure your code to start separate tasks that are executed simultaneously. Each task is known as a **thread**. And the overall approach to writing code that executes threads concurrently is known as **multithreading**.
5. Each thread in a multithreaded program requires additional processing power and memory from the computer where the code is being executed.
6. Async in javascript is similar to multithreading
7. What's an advantage of using multithreading? >> It can make your computer programs faster and more responsive.
8. **Algorithms** set of instructions that describes how to get the exact result you want.
