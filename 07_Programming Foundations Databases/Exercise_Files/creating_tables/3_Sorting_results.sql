SELECT * FROM Dishes ORDER BY `Name`;

-- ascending
SELECT * FROM Dishes ORDER BY `Name` ASC;

-- descending
SELECT * FROM Dishes ORDER BY `Name` DESC;

-- by date
SELECT * FROM Reservations WHERE `Date` > "2019-02-06" AND `Date` < "2019-02-07" ORDER BY `Date`;