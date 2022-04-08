-- select all
SELECT * FROM Customers;
SELECT * FROM Dishes;

SELECT Name FROM Customers;
SELECT FirstName, LastName, Email FROM Customers;

-- Narrowing query results (based on condition)
SELECT FirstName, LastName, State FROM Customers WHERE State = "CA";

SELECT FirstName, LastName, State FROM Customers WHERE State = "CA" OR State = "CO";

SELECT FirstName, LastName, State FROM Customers WHERE State LIKE "C%";

SELECT * FROM Reservations WHERE Date > "2019-02-06" AND Date < "2019-02-07";