SELECT 
		CONCAT(pp.FirstName, ' ', pp.MiddleName,' ', pp.LastName) AS FullName,
		he.BirthDate,
		he.JobTitle
	FROM Person.Person pp
		INNER JOIN HumanResources.Employee he
			ON pp.BusinessEntityID = he.BusinessEntityID