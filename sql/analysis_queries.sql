-- Sales Analytics ETL Project
-- Microsoft SQL Server analysis queries

-- 1. View loaded data
SELECT *
FROM dbo.Sales;

-- 2. Total revenue
SELECT
    SUM(TotalAmount) AS TotalRevenue
FROM dbo.Sales;

-- 3. Revenue by product
SELECT
    ProductName,
    SUM(TotalAmount) AS Revenue
FROM dbo.Sales
GROUP BY ProductName
ORDER BY Revenue DESC;

-- 4. Revenue by city
SELECT
    City,
    SUM(TotalAmount) AS Revenue
FROM dbo.Sales
GROUP BY City
ORDER BY Revenue DESC;

-- 5. Top customers
SELECT
    CustomerName,
    SUM(TotalAmount) AS TotalSpent
FROM dbo.Sales
GROUP BY CustomerName
ORDER BY TotalSpent DESC;

-- 6. Units sold by product
SELECT
    ProductName,
    SUM(Quantity) AS UnitsSold
FROM dbo.Sales
GROUP BY ProductName
ORDER BY UnitsSold DESC;

-- 7. Monthly revenue
SELECT
    YEAR(OrderDate) AS SalesYear,
    MONTH(OrderDate) AS SalesMonth,
    SUM(TotalAmount) AS Revenue
FROM dbo.Sales
GROUP BY YEAR(OrderDate), MONTH(OrderDate)
ORDER BY SalesYear, SalesMonth;
