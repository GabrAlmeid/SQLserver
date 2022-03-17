
SELECT coluna1, coluna2
FROM tabela


-- distinct não retorna dados duplicados

SELECT DISTINCT coluna1, coluna2 
FROM tabela

-- where coloca condição na requisição com operador logico

SELECT *
FROM Person.person
WHERE LastName = 'miller' and Firstname = 'anna'

SELECT *
FROM production.Product
WHERE color = 'blue' or color = 'blue'

SELECT *
FROM production.Product
WHERE listPrice > 1500

SELECT *
FROM production.Product
WHERE listPrice > 1500 and listPrice < 5000

SELECT *
FROM production.Product
WHERE color <> 'red'

-- count mostra a quantidade de linhas na tabela 

SELECT count (title)
FROM person.Person

-- top permite selecionar uma quantidade de linhas que vc quer que retorne

SELECT TOP 10 *
FROM production.Product

-- ordem by permite organizar as informações de forma crescente (asc)
-- ou decrescente (desc)

SELECT *
FROM person.Person
ORDER BY FirstName asc

-- between é usado para encontrar valor entre um valor minimo e valor maximo

SELECT *
FROM Production.Product
Where ListPrice between 1000 and 1500

SELECT *
FROM Production.Product
Where ListPrice NOT between 1000 and 1500

SELECT *
FROM HumanResources.Employee
WHERE HireDate between '2009/01/01' and '2010/01/01'
ORDER BY HireDate

-- in é usado para verificar se um valor corresponde com qualquer valor passado
-- na lista de valores

SELECT *
FROM Person.person
WHERE BusinessEntityID in (2,7,13)

SELECT *
FROM Person.person
WHERE BusinessEntityID NOT in (2,7,13)

-- like permite que você não insira a informação completa para ter o resultado

SELECT *
FROM Person.person
WHERE Firstname like 'ovi%'

SELECT *
FROM Person.person
WHERE Firstname like '%to'

SELECT *
FROM Person.person
WHERE Firstname like '%ri%'

SELECT *
FROM Person.person
WHERE Firstname like '%ro_'

-- agregação MIN MAX SUM AVG, agregam ou combinam dados de uma tabela em um só resultado

SELECT TOP 10 sum(linetotal) AS "SOMA"
FROM Sales.SalesOrderDetail

SELECT TOP 10 min(linetotal) AS "MENOR VALOR"
FROM Sales.SalesOrderDetail

SELECT TOP 10 max(linetotal) AS "MAIOR VALOR"
FROM Sales.SalesOrderDetail

SELECT TOP 10 avg(linetotal) AS "MEDIA"
FROM Sales.SalesOrderDetail

-- Group By, divide o resultado da pesquisa em grupos

Select SpecialOfferId, sum (UnitPrice) AS "SOMA"
From Sales.SalesOrderDetail
Group By SpecialOfferId

SELECT ProductId, count (ProductId)
FROm Sales.SalesOrderDetail
GROUP BY ProductID

-- having é usado com group by para filtrar resultados de um agrupamento







