SELECT SUM(Revenue) AS TotalRevenue
FROM FinancialData;

SELECT SUM(Profit) AS TotalProfit
FROM FinancialData;

SELECT AVG(StockPrice) AS AverageStockPrice
FROM FinancialData;

SELECT Region,
       SUM(Revenue) AS TotalRevenue
FROM FinancialData
GROUP BY Region
ORDER BY TotalRevenue DESC;

SELECT BusinessUnit,
       SUM(Profit) AS TotalProfit
FROM FinancialData
GROUP BY BusinessUnit
ORDER BY TotalProfit DESC;

SELECT
    YEAR(Date) AS Year,
    MONTH(Date) AS Month,
    SUM(Revenue) AS Revenue
FROM FinancialData
GROUP BY YEAR(Date), MONTH(Date)
ORDER BY Year, Month;

SELECT TOP 10
    Date,
    Revenue
FROM FinancialData
ORDER BY Revenue DESC;

SELECT MAX(StockPrice) AS HighestStock
FROM FinancialData;

SELECT MIN(Expenses) AS LowestExpense
FROM FinancialData;

SELECT
    Company,
    ROUND((Profit / Revenue) * 100, 2) AS ProfitMargin
FROM FinancialData;