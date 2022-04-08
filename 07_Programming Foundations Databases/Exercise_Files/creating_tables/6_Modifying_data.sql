INSERT INTO Customers;

INSERT INTO Customers (FirstName, LastName, Email, Phone) VALUES ("Jane", "Smith", "jsmith2019@landonhotel.com", "415-555-1234");


-- updating values in a table
UPDATE Customers SET Email = "isdsdf@gmail.com" WHERE CustomerID = 1; 

-- deleting
DELETE FROM Customers WHERE CustomerID = 26;

