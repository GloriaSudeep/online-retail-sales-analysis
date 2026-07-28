CREATE DATABASE retail_analysis;
USE retail_analysis;
show tables;

-- Total Records

SELECT COUNT(*) AS Total_Records
FROM cleaned_onlinesales;

-- ==========================================
-- Check for missing Customer IDs
-- Purpose: Identify transactions without customer information.
-- ==========================================
select count(*) from cleaned_onlinesales where `Customer ID` is null;
select count(*) from cleaned_onlinesales where `Description` is null;
select count(*) from cleaned_onlinesales where Quantity is null;
select count(*) from cleaned_onlinesales where InvoiceDate is null;

-- ==========================================
-- Duplicate Record Check
-- Purpose: Identify completely duplicated transaction records.
-- ==========================================
SELECT
    Invoice,StockCode,Description,Quantity,InvoiceDate,Price,`Customer ID`,Country,
    COUNT(*) AS duplicate_count
FROM cleaned_onlinesales
GROUP BY
    Invoice,StockCode,Description,Quantity,InvoiceDate,Price,`Customer ID`,Country
HAVING COUNT(*) > 1;


-- ==========================================
-- Date Range Analysis
-- Purpose: Determine the time period covered by the dataset.
-- ==========================================
select min(InvoiceDate) as StartDate,max(InvoiceDate) as EndDate from cleaned_onlinesales;

-- ==========================================
-- Check for missing product descriptions
-- ==========================================

SELECT COUNT(*) AS Missing_Descriptions
FROM cleaned_onlinesales
WHERE Description IS NULL
   OR TRIM(Description) = '';
   
   ##we have 878 missing values in descriptions
   
   -- ==========================================
-- Business Question:
-- Which products generate the highest revenue?
-- ==========================================


SELECT
    StockCode,
    Description,
    ROUND(SUM(Revenue), 2) AS Total_Revenue
FROM cleaned_onlinesales
GROUP BY StockCode, Description
ORDER BY Total_Revenue DESC
LIMIT 20;

##"Which products sold the highest quantity?"
select StockCode,sum(quantity) as Product_Qty from cleaned_onlinesales WHERE Quantity > 0
group by StockCode order by Product_Qty desc limit 10;

##Lowest-performing products
SELECT
    StockCode,
    MAX(Description) AS Description,
    ROUND(SUM(Revenue), 2) AS Total_Revenue
FROM cleaned_onlinesales
WHERE Quantity > 0
GROUP BY StockCode
ORDER BY Total_Revenue ASC
LIMIT 5;

##Country wise Revenue
select Country,round(sum(Revenue),2) as total_revenue from cleaned_onlinesales
WHERE Quantity > 0
group by Country
order by total_revenue desc
limit 10;

##How much revenue was generated from completed sales?
select  round(sum(Revenue),2) from cleaned_onlinesales
where quantity>0;
 
 ##Monthly Revenue Trend
SELECT Year,Month,
ROUND(SUM(Revenue),2) AS Monthly_Revenue
FROM cleaned_onlinesales
WHERE Quantity>0
GROUP BY Year,Month
ORDER BY Year,Month;

##Monthly Order Count
select Year,Month,count(distinct Invoice) as Order_count
FROM cleaned_onlinesales
WHERE Quantity>0
GROUP BY Year,Month
ORDER BY Year,Month;

##Country-wise Orders
SELECT
Country,
COUNT(DISTINCT Invoice) AS Orders
FROM cleaned_onlinesales
WHERE Quantity>0
GROUP BY Country
ORDER BY Orders DESC;


-- ==========================================
-- Business Question:
-- Which countries have the highest number of unique customers?
-- ==========================================

SELECT
    Country,
    COUNT(DISTINCT `Customer ID`) AS Customer_per_country
FROM cleaned_onlinesales
WHERE `Customer ID` IS NOT NULL
GROUP BY Country
ORDER BY Customer_per_country DESC;


-- ==========================================
-- Business Question:
-- What is the Average Order Value (AOV)?
-- ==========================================

SELECT
    ROUND(
        SUM(Revenue) / COUNT(DISTINCT Invoice),
        2
    ) AS Average_Order_Value
FROM cleaned_onlinesales
WHERE Quantity > 0;

##CTE
-- ==========================================
-- Business Question:
-- Which countries generate the highest revenue?
-- ==========================================

WITH CountryRevenue AS
(
    SELECT
        Country,
        ROUND(SUM(Revenue),2) AS Total_Revenue
    FROM cleaned_onlinesales
    WHERE Quantity > 0
    GROUP BY Country
)

SELECT *
FROM CountryRevenue
ORDER BY Total_Revenue DESC
LIMIT 10;

##Window function
-- ==========================================
-- Business Question:
-- Rank countries based on total revenue.
-- ==========================================

WITH CountryRevenue AS
(
    SELECT
        Country,
        ROUND(SUM(Revenue),2) AS Total_Revenue
    FROM cleaned_onlinesales
    WHERE Quantity > 0
    GROUP BY Country
)

SELECT
    Country,
    Total_Revenue,
    RANK() OVER(
        ORDER BY Total_Revenue DESC
    ) AS Revenue_Rank
FROM CountryRevenue;
