# Bright-Coffee-Shop
Comprehensive analysis of coffee shop sales utilizing Snowflake for data cleaning and exploratory data analysis (EDA), complemented by Power Bifor creating interactive data visualization dashboard.

Analytics project on sales data of a Coffee Shop. Tools used for analysis is MS Excel, SQL, Power Query and Python.
📊 Bright Coffee Shop Sales Analysis (BRIGHTLIGHT) Purpose: Business Insights for a New CEO using Historical Transactional Data from Bright Coffee Shop Due Date: 11 May 2025, 23:59
1.	INTRODUCTION & INSTRUCTIONS 1.1 INTRODUCTION You have been provided with a dataset titled “Bright Coffee Shop Sales”, which captures daily transactional information from a coffee shop. The business has recently appointed a new CEO whose mission is to grow the company’s revenue and improve product performance. Your role, as a Junior Data Analyst, is to extract actionable insights from historical data and prepare a presentation to assist the CEO in decision-making.
2.	OBJECTIVE Use your analytics, SQL, and data visualization skills to help Bright Coffee Shop understand:
• Which products generate the most revenue
• What time of day the store performs best
• Sales trends across products and time intervals
• Recommendations for improving sales performance
3.	TOOLS ALLOWED You may use any tool at your disposal, including but not limited to: Coding Platforms:
• Microsoft SQL Server
• Databricks
• DBeaver
• SQL Developer
• Google BigQuery
• MySQL Workbench
Data Visualization:
• Microsoft Excel
• Power BI
• Tableau
• Google Sheets
Presentation & Reporting:
• Microsoft PowerPoint
• Canva
• Miro
• Figma
4.	TASKS
Task 1: Planning & Architecture (Miro) Using Miro or any equivalent whiteboard tool:
1.	Design a Data Flow & Architecture Diagram that outlines:
• Where the data comes from (source)
• How it is processed (ETL pipeline)
• Where it is stored (Snowflake)
• How it is analyzed and presented
2.	List the Key Insights that the team should deliver, such as:
• Sales by product category and time intervals
• High-performing and low-performing products
• Total revenue calculations
2.	Outline the calculations to be performed:
• Total Amount = unit_price * transaction_qty
• Grouping by 30-minute time intervals
• Total units sold by product type or detail
You can add on the above, this is just to give you an idea of what is expected from the Miro planning.
Task 2: Data Processing in Snowflake
1.	Convert the provided Excel data to CSV.
2.	Load the CSV into Snowflake
3.	Perform data transformations:
• Create a new column: transaction_time_bucket to group transactions into 30-minute intervals (Or it can be 1 hour intervals)
• Cast unit_price properly (some entries use commas, e.g., '3,1' should be converted to 3.1)
• Compute total_amount = unit_price * transaction_qty
• Use SQL to group by product types, time buckets, etc.
You can add on the above, this is just to give you an idea of what is expected from the Data Processing.
Task 3: Data Analysis in Excel After processing the data in Snowflake:
1.	Export the processed table to Microsoft Excel or your visualization tool
2.	Create dashboards or pivot tables showing:
• Total revenue per product type
• Peak time intervals for sales
• Quantity of items sold by product category
• Best-selling product types or details
• Use charts and graphs to make the story visually appealing
Task 4: Presentation to the CEO Prepare a Presentation to deliver insights to the CEO. Include:
1.	Overview of your approach – Create a separate document for your Methodology
2.	Key insights from your analysis (backed by visuals) – Create a separate document for your Presentation
3.	Recommendations:
• Marketing campaigns during slow time slots
• Stock more of the best-selling items
• Promote underperforming products
4.	Next Steps:
• Automate daily sales reporting
• Track sales performance across multiple locations in the future
• Implement loyalty programs based on peak customer time slots
6.	SUBMISSION GUIDELINES Submit the following items:
• Miro Plan/Diagram
• Processed Dataset on a Spreadsheet (Microsoft Excel or Google Sheets) with Pivot tables & Charts
• PowerPoint Presentation
• Text file with SQL code
