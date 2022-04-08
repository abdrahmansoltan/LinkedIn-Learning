-- This contains the queries demonstrated in Chapter 5.

CREATE DATABASE Restaurant;
USE Restaurant;

CREATE TABLE Customers (
    CustomerID INT(6) NOT NULL AUTO_INCREMENT,
    FirstName VARCHAR(200) NOT NULL,
    LastName VARCHAR(200) NOT NULL,
    Email VARCHAR(200),
    Address VARCHAR(200),
    City VARCHAR(200),
    State CHAR(2),
    Phone VARCHAR(20) NOT NULL,
    Birthday DATE,
    FavoriteDish INT(6) REFERENCES Dishes(DishID),
    PRIMARY KEY(CustomerID)
);
