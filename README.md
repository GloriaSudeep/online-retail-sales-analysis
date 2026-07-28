Online Retail Sales Analysis
Project Status

Current Status: In Progress

This project is an end-to-end retail sales analysis portfolio project that demonstrates the complete analytics workflow using Python (Pandas) for data preparation and exploratory data analysis, MySQL for business-oriented SQL analysis, and Power BI for interactive dashboard development.

The Python and MySQL phases have been completed. The Power BI dashboard is currently under development.

Project Overview

This project analyses a large online retail sales dataset containing over one million transaction records to identify business insights related to sales performance, customer behaviour, product performance, and geographical sales trends.

The project follows a typical data analytics workflow:

Data Cleaning and Preprocessing
Exploratory Data Analysis (EDA)
Feature Engineering
Business Analysis using MySQL
Interactive Dashboard Development using Power BI
Technologies Used
Python
Pandas
NumPy
Matplotlib
MySQL
Jupyter Notebook
Power BI (In Progress)
Dataset

The project uses a large online retail transaction dataset containing more than 1 million records.

The dataset includes the following attributes:

Invoice Number
Stock Code
Product Description
Quantity
Invoice Date
Unit Price
Customer ID
Country

The dataset was cleaned and transformed before performing business analysis and visualization.

Project Workflow
Raw Dataset
      │
      ▼
Python (Pandas)
• Data Cleaning
• Feature Engineering
• Exploratory Data Analysis
      │
      ▼
MySQL
• Data Quality Checks
• Business Analysis
• Sales Metrics
• Customer Analysis
• Advanced SQL
      │
      ▼
Power BI (In Progress)
• KPI Dashboard
• Interactive Reports
• Business Visualizations
Python Analysis

The Python phase focused on preparing the dataset for analysis.

Tasks Completed
Imported the dataset
Explored dataset structure
Checked data types
Handled missing values
Removed duplicate records
Removed invalid sales records
Converted date columns
Created Revenue column
Extracted Year and Month
Performed Exploratory Data Analysis (EDA)
MySQL Analysis

The cleaned dataset was imported into MySQL to perform business-oriented analysis.

Data Quality Checks
Total records
Missing value analysis
Duplicate record detection
Date range validation
Sales Analysis
Total Sales Revenue
Monthly Revenue Trend
Monthly Order Trend
Average Order Value (AOV)
Product Analysis
Top Revenue Products
Top Selling Products
Lowest Performing Products
Country Analysis
Country-wise Revenue
Country-wise Orders
Country-wise Customers
Advanced SQL
Common Table Expressions (CTEs)
Window Functions (RANK())
Business Questions Answered
Which products generate the highest revenue?
Which products sell the highest quantity?
Which countries generate the highest revenue?
Which countries have the highest number of customers?
How do monthly sales and order volumes change over time?
What is the Average Order Value (AOV)?
How are countries ranked based on total revenue?
Power BI (In Progress)

The final phase of the project will include an interactive dashboard with:

Executive KPI Dashboard
Revenue Analysis
Monthly Sales Trends
Country-wise Performance
Product Performance
Customer Insights
Interactive Filters and Slicers
Project Structure
Online-Retail-Sales-Analysis/
│
├── Dataset/
│
├── Python/
│   ├── Online Sales EDA.ipynb
│
├── MySQL/
│   └── Online_Sales_EDA.sql
│
├── PowerBI/
│   ├── Online_Retail_Dashboard.pbix
│
├── Images/
│
├── README.md
│
└── requirements.txt

Skills Demonstrated
Python
Pandas
Data Cleaning
Data Wrangling
Exploratory Data Analysis (EDA)
Feature Engineering
SQL
MySQL
Aggregate Functions
Joins and Filtering
Common Table Expressions (CTEs)
Window Functions
Business Analysis
Data Visualization

Future Enhancements
Complete Power BI Dashboard
Add DAX Measures
Build Interactive KPI Reports
Publish Dashboard Screenshots
Document Key Business Insights
Enhance Dashboard with Drill-through Analysis
Repository Contents
Python notebook for data cleaning and exploratory analysis
MySQL script containing business analysis queries
Power BI dashboard (under development)
Project documentation

This repository demonstrates an end-to-end data analytics workflow, beginning with raw transactional data and progressing through data preparation, SQL-based business analysis, and business intelligence reporting.
