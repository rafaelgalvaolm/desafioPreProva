SELECT 
	CONCAT(pp.FirstName, ' ', pp.MiddleName,' ', pp.LastName) AS FullName,
	CONCAT(pa.AddressLine1, ' ', pa.AddressLine2, ' ', pa.City) AS FullAddress,
	pa.StateProvinceID
	FROM Person.Person pp 
		INNER JOIN Person.BusinessEntityAddress pba
			ON pp.BusinessEntityID = pba.BusinessEntityID
		INNER JOIN person.Address pa
			ON pba.AddressID = pa.AddressID
	WHERE pa.StateProvinceID = 9;