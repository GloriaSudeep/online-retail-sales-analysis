# Online Retail Sales Analysis

An end-to-end retail sales analysis project demonstrating a complete data analytics workflow using **Python (Pandas)** for data preparation and exploratory analysis, **MySQL** for business-oriented SQL analysis, and **Power BI** for interactive dashboard development.

The project focuses on understanding sales performance, product performance, customer behavior, order trends, returns, and country-level sales patterns.

## Project Workflow

**Raw Retail Data**
↓
**Python / Pandas**

* Data Cleaning
* Data Validation
* Feature Engineering
* Exploratory Data Analysis

↓

**MySQL**

* Data Quality Checks
* Sales Analysis
* Customer Analysis
* Product Analysis
* Country Analysis
* Advanced SQL

↓

**Power BI**

* KPI Dashboard
* Sales Trends
* Product & Customer Analysis
* Interactive Filters and Visualizations
* Business Insights

---

## Technologies Used

* **Python**
* **Pandas**
* **NumPy**
* **Matplotlib**
* **MySQL**
* **Jupyter Notebook**
* **Power BI**

---

## Dataset

The project uses a large online retail transaction dataset containing **more than 1 million records** across two yearly datasets.

The main attributes include:

* Invoice Number
* Stock Code
* Product Description
* Quantity
* Invoice Date
* Unit Price
* Customer ID
* Country

The datasets were combined, cleaned, validated, and transformed before performing SQL analysis and visualization.

---

## Python — Data Cleaning & EDA

Python and Pandas were used for initial data preparation, validation, feature engineering, and exploratory analysis.

### Data Preparation

* Imported the two yearly datasets
* Combined the datasets into a single DataFrame
* Explored dataset structure and data types
* Checked missing values
* Identified duplicate records
* Investigated invalid sales records
* Converted invoice date into a suitable datetime format
* Created a **Revenue** column using:

`Revenue = Quantity × Unit Price`

* Extracted Year and Month from the invoice date
* Identified return transactions
* Performed exploratory data analysis

### Data Quality Considerations

The dataset contains transactions with:

* Missing Customer IDs
* Negative quantities representing returned items
* Missing product descriptions
* Other records requiring validation before calculating sales metrics

For sales performance analysis, valid sales transactions were separated from return transactions to avoid distorting revenue and order-related metrics.

---

## MySQL — Business Analysis

The cleaned dataset was loaded into MySQL for structured business analysis.

### Data Quality Checks

* Total record count
* Missing-value analysis
* Duplicate detection
* Date-range validation
* Validation of sales and return transactions

### Sales Analysis

* Total sales revenue
* Monthly revenue trends
* Monthly order trends
* Average Order Value (AOV)
* Sales performance over time

### Product Analysis

* Top products by revenue
* Top products by quantity sold
* Lowest-performing products
* Product-level sales contribution

### Customer Analysis

* Total customers
* Customer-level sales analysis
* Customer contribution to revenue
* Customer purchasing behavior

### Country Analysis

* Country-wise revenue
* Country-wise order volume
* Country-wise customer count
* Revenue ranking by country

### Advanced SQL

The project also includes:

* Aggregate functions
* `GROUP BY`
* Subqueries
* Common Table Expressions (CTEs)
* Window functions
* `RANK()`
* Conditional logic

---

## Power BI Dashboard

Power BI was used to transform the analysis into an interactive business dashboard.

The dashboard includes:

### Overview

* Total Revenue
* Total Orders
* Total Customers
* Total Products
* Sales trends
* Country-level performance

### Product & Customer Analysis

* Product performance
* Customer performance
* Revenue contribution
* Sales comparisons

### Interactive Analysis

Users can explore the data using filters and slicers to analyze sales performance across different dimensions such as time, country, product, and customer.

---

## Business Questions Answered

The project addresses questions such as:

1. Which products generate the highest revenue?
2. Which products have the highest sales quantity?
3. Which countries generate the highest revenue?
4. Which countries have the highest number of customers?
5. How do monthly revenue and order volumes change over time?
6. What is the Average Order Value (AOV)?
7. Which products contribute most to overall revenue?
8. How are countries ranked based on total revenue?
9. How do return transactions affect the sales analysis?
10. How does customer activity contribute to overall sales performance?

---

## Key Skills Demonstrated

### Data Preparation

* Data cleaning
* Missing-value handling
* Duplicate detection
* Data validation
* Feature engineering

### Python

* Pandas
* NumPy
* Exploratory Data Analysis
* Data transformation
* Visualization

### SQL

* Aggregations
* Filtering
* Subqueries
* CTEs
* Window functions
* Ranking
* Business-oriented analysis

### Power BI

* Data visualization
* KPI development
* Interactive dashboards
* Slicers and filters
* Business reporting

---

## Project Structure

```text
online-retail-sales-analysis/
│
├── Online Sales EDA.ipynb
├── Online_Sales_EDA.sql
├── Online_Sales.pbix
└── README.md
```

## Conclusion

This project demonstrates an end-to-end approach to analyzing a large retail dataset, from data preparation and exploratory analysis to SQL-based business analysis and interactive Power BI reporting.

The project combines technical data analysis skills with business-focused questions to identify patterns in sales, products, customers, countries, and order activity.


