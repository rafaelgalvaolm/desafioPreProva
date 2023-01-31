SELECT
	CONCAT(pp.FirstName, ' ', pp.MiddleName,' ', pp.LastName) AS superiorUsers,
	scc.CardType AS ccName
	FROM Person.Person pp
		INNER JOIN Sales.PersonCreditCard spcc
			ON pp.BusinessEntityID = spcc.BusinessEntityID
		INNER JOIN Sales.CreditCard scc
			ON spcc.CreditCardID = scc.CreditCardID
	WHERE scc.CardType LIKE '%Superior%'