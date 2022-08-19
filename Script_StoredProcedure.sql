----------------------
-- Stored Procedure: Report of total amount of money sold, grouped by brand name.
----------------------

USE Car_Dealership;

DELIMITER //
CREATE PROCEDURE Report_TotalSold_ByBrand ()
BEGIN
	SELECT C.Brand, SUM(I.Amount) AS TOTAL_AMOUNT_MONEY
	FROM Invoice I
	INNER JOIN Car_ForSelling C
	ON I.Car_ForSellingID = C.ID
	GROUP BY C.Brand;
END //
DELIMITER ;

-- Example
CALL Report_TotalSold_ByBrand;
