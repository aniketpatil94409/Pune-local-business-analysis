
# Pune Local Business Analysis Dashboard
A full-stack data analysis project exploring local business trends in Pune using SQL, Python, and Power BI.


## Table of Content
- [Introduction](#introduction)
- [Dataset Overview](#dataset-overview)
- [Objectives](#objectives)
- [Technologies Used](#technologies-used)
- [SQL Analysis](#sql-analysis)
- [Python Analysis](#python-analysis)
- [Power BI Dashboard](#power-bi-dashboard)
- [Key Insights](#key-insights)
- [Conclusion](#conclusion)
- [Future Enhancements](#future-enhancements)

## Introduction
This project explores the local business landscape of Pune using data analytics. It focuses on identifying high-performing areas, business categories, and underperforming segments, while also analyzing delivery efficiency and pricing impact.

## Data Overview
- File: `business.csv`
- Records: 700+
- Key Columns:
  - Business_Name, Area, Category, Monthly_Sales, Rating
  - Price_Range, Is_Active, Avg_Order_Value, Delivery_Time_Minutes
  - Monthly_Online_Orders

  - [for missing value or null value :-- "Missing values in delivery time and online orders were retained to represent businesses that do not offer these services. This allowed segmentation between offline and online-first businesses and uncovered gaps in online adoption across Pune’s local business ecosystem.]

## Objective
- Find top-performing business areas
- Analyze customer ratings and monthly sales
- Detect underperforming businesses
- Evaluate online order influence
- Assess delivery performance by region

## Technologies Used:
| Tool        | Purpose                      |
|-------------|-------------------------------|
| SQL         | Data extraction & analysis     |
| Python (Pandas, Matplotlib) | EDA & cleaning          |
| Power BI    | Data visualization & dashboards |

## SQL Analysis:
File: `pune_local_business.sql`  
Key Queries:
- Top 5 Active Business Areas
- Average Ratings by Category
- Total Sales by Price Range
- Average Delivery Time (by area)
- % of Businesses Offering Online Orders
- Businesses with Avg Order > ₹700
- High Priced OR Koregaon Park businesses

## Python Analysis:
#Optional 

File: `pune_business_analysis.py`  
Tasks Performed:
- Data cleaning and null checks
- Top 5 active areas (bar chart)
- Sales vs Rating (scatter plot)
- Detection of underperformers (low rating + sales)
- Exported cleaned dataset

## Power Bi Dashboard:
File: `pune local business..pbix`  
Includes visuals:
- Area-wise active business map
- Category-wise ratings
- Sales vs Ratings correlation
- Delivery time by area
- Price range & order filters


Key Insights:
- Koregaon Park & Kothrud lead in active business density.
- High price range businesses have fewer but richer customers.
- Online orders boost monthly revenue significantly.
- Some areas suffer from longer delivery times.


## Conclusion:
This project demonstrates how SQL, Python, and Power BI can be integrated to deliver business insights. It helps uncover patterns in Pune’s local market and empowers better decision-making for businesses and marketers.
