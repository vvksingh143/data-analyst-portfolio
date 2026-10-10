# Sales Data Analysis Portfolio Project

**Created for:** Vivek Kumar Singh  
**Project type:** Beginner Data Analyst portfolio project  
**Tools:** Excel / Google Sheets, SQL, Python (Pandas), Power BI (dashboard build guide)

## Objective
Analyze sample sales data to understand sales performance across months, product categories, cities, regions, and payment methods.

## Dataset
`data/sales_data.csv` contains 36 synthetic sample orders. The dataset includes order date, region, city, category, product, quantity, unit price, payment method, sales amount, and month. All records are fictional and intended only for learning.

## Project files
- `Excel_Sales_Dashboard.xlsx` — KPI dashboard, monthly sales chart, category chart, raw data, and summary sheets.
- `data/sales_data.csv` — sample dataset for Excel, SQL, Python, and Power BI.
- `sql/sales_analysis.sql` — SQL queries for KPIs, monthly trends, categories, products, cities, and payment methods.
- `python/sales_analysis.py` — beginner Python/Pandas analysis script.
- `powerbi/README.md` — steps and DAX measures to create a Power BI dashboard.

## Key analysis questions
1. What are the total sales, orders, and units sold?
2. Which month has the highest sales?
3. Which product category contributes the most revenue?
4. Which cities generate the highest sales?
5. Which payment method is most frequently used?
6. What is the average order value?

## How to use
### Excel
Open `Excel_Sales_Dashboard.xlsx`. Explore the Dashboard, Sales Data, Monthly Summary, and Category Summary sheets.

### SQL
Load `data/sales_data.csv` into a SQL table named `sales_data` (column names can be kept as shown), then run the queries in `sql/sales_analysis.sql`. `LIMIT` syntax works in PostgreSQL and MySQL.

### Python
Install dependencies:
```bash
pip install pandas
```
Run from the project root:
```bash
python python/sales_analysis.py
```

### Power BI
Follow the instructions in `powerbi/README.md` to create and save your own `.pbix` dashboard.

## Skills demonstrated
- Data organization and basic data quality awareness
- KPI calculation
- Grouping and aggregation
- SQL filtering and sorting
- Basic Python analysis with Pandas
- Dashboard design and data visualization

## Limitations
This is a learning project using synthetic data, not actual business data. The Power BI guide is included, but the `.pbix` dashboard must be built and saved in Power BI Desktop before claiming a completed Power BI dashboard project.
