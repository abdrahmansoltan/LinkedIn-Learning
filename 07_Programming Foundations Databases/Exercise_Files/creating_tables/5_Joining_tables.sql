SELECT FirstName, LastName, FavoriteDish FROM Customers JOIN Dishes;

SELECT FirstName, LastName, FavoriteDish FROM Customers JOIN Dishes ON Customers.FavoriteDish = Dishes.DishID;

SELECT FirstName, LastName, FavoriteDish, Dishes.`Name` FROM Customers JOIN Dishes ON Customers.FavoriteDish = Dishes.DishID;

SELECT FirstName, LastName, FavoriteDish, Dishes.DishID, Dishes.`Name` FROM Customers JOIN Dishes ON Customers.FavoriteDish = Dishes.DishID;

SELECT FirstName, LastName, Dishes.`Name` FROM Customers JOIN Dishes ON Customers.FavoriteDish = Dishes.DishID;

SELECT * FROM Reservations;

SELECT FirstName, LastName, Reservations.Date, Reservations.PartySize FROM Customers JOIN Reservations ON Reservations.CustomerID = Customers.CustomerID ORDER BY Reservations.Date;
