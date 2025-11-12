Coffee-Shop-Sales-Analytics
# ☕ Coffee Shop Data Analytics Project

## 📊 Overview
This project analyzes coffee shop sales data to uncover business insights and trends. The goal is to understand customer behavior, product performance, and seasonal sales patterns.  
Using a modern data architecture, the data is extracted, transformed, and loaded (ETL) into **Snowflake**, analyzed using **SQL** and **Excel**, and visualized through **Power BI** dashboards.  

---

## 🧾 Dataset
**File:** `Raw Dataset.csv`  
**Description:** The dataset contains daily transaction-level records from a coffee shop, including:
- `Transaction_ID`  
- `Date` and `Time` of sale  
- `Product` and `Category`  
- `Quantity` and `Price`  
- `Store_Location`  
- `Total_Sales`

---

## 🧠 Objectives
1. **Understand sales performance** across products, categories, and stores.  
2. **Identify peak sales periods** by day, month, and year.  
3. **Analyze customer purchasing behavior** and spending patterns.  
4. **Build visual dashboards** to communicate key business insights.  
5. **Implement a simple data pipeline** for scalable analytics in **Snowflake**.

---

## ⚙️ Data Architecture
The following workflow was designed and planned in **Miro**:

1. **Data Source:** Raw sales CSV file (coffee shop transactions).  
2. **ETL Pipeline:**
   - Data cleaning and transformation (remove nulls, standardize dates, etc.).
   - Load processed data into **Snowflake**.
3. **Storage:** Centralized data warehouse on Snowflake.  
4. **Analytics:**
   - SQL queries for metrics and KPI calculation.
   - Aggregations by time, category, and location.
5. **Visualization:**
   - Power BI dashboards for management reporting.  
   - Excel pivot analysis for exploratory review.  

---

## 🧩 Tools & Technologies
| Tool | Purpose |
|------|----------|
| **Snowflake** | Cloud data warehousing and SQL analytics |
| **SQL** | Data transformation, cleaning, and aggregation |
| **Excel** | Exploratory analysis and pivot reporting |
| **Power BI** | Interactive dashboards and data storytelling |
| **Miro** | Data flow and architecture design |

---

## 🔍 Key Insights
- ☕ **Top-selling products:** Identify which drinks or items generate the highest revenue.  
- 📆 **Seasonal trends:** Detect months or days with peak sales.  
- 📍 **Store comparison:** Evaluate performance across multiple locations.  
- 💰 **Customer spending patterns:** Understand how quantity and price impact total sales.  

---

## 📈 Example Visuals
Dashboards include:
- **Sales Overview Dashboard** — total revenue, transactions.  
- **Product Performance Dashboard** — top items by revenue and quantity.  
- **Time Analysis Dashboard** — daily, weekly, and monthly sales trends.  


---

## 🧹 Data Cleaning Highlights
Example SQL and transformation steps in **Snowflake**:
```sql
-- Remove null values
SELECT * 
FROM coffee_sales
WHERE product IS NOT NULL;

-- Convert date and time to proper timestamp
SELECT TO_TIMESTAMP(sale_date, 'DY MON DD YYYY HH24:MI:SS GMTTZH:TZM') AS sale_timestamp
FROM coffee_sales;

-- Extract year, month, day for trend analysis
SELECT 
  EXTRACT(YEAR FROM sale_timestamp) AS year,
  EXTRACT(MONTH FROM sale_timestamp) AS month,
  EXTRACT(DAY FROM sale_timestamp) AS day
FROM coffee_sales;

🧮 Analytical Questions Explored
What are the top-performing products by total sales?

Which days and months generate the highest revenue?

How do different store locations compare in performance?

What are the average order values and customer purchase patterns?

How can the coffee shop optimize inventory and staffing based on peak periods?
