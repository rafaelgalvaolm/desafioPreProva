SELECT DISTINCT
	COUNT(spcc.BusinessEntityID) AS ccUsers, 
	scc.CardType
	FROM sales.PersonCreditCard spcc
		INNER JOIN person.Person pp
			ON spcc.BusinessEntityID = pp.BusinessEntityID
		INNER JOIN Sales.CreditCard scc 
			ON spcc.CreditCardID = scc.CreditCardID
	GROUP BY scc.CardType
