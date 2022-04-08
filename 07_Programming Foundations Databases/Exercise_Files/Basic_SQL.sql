SELECT FirstName, LastName FROM Customers
WHERE LastName = 'Jenkins';

-- This statement, will show us the first name and last name of customers with a specific birthdate
SELECT FirstName, LastName FROM Customers
WHERE Birthday = '1991-02-09';

-- This statement, will show us the first name and last name of customers with a specific birthdate
SELECT FirstName, LastName, Birthday FROM Customers
ORDER BY Birthday;