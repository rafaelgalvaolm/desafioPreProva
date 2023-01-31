SELECT 
	ppr.name AS productName,
	SUM(ssod.lineTotal) AS totalSum
	FROM Production.Product ppr
		INNER JOIN Sales.SalesOrderDetail ssod
			ON ppr.ProductID = ssod.ProductID
	GROUP BY SUM(ssod.lineTotal)