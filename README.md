# Power BI Dashboard Guide

This folder contains instructions for building a Power BI dashboard using the shared dataset. A `.pbix` file is not included because it must be created and saved in Power BI Desktop.

## Build it
1. Open Power BI Desktop.
2. Select **Get Data → Text/CSV** and import `../data/sales_data.csv`.
3. Check data types: `Order_Date` = Date; `Quantity` = Whole number; `Unit_Price_INR` and `Sales_INR` = Whole/Currency.
4. Create these measures:

```DAX
Total Sales = SUM(sales_data[Sales_INR])
Total Orders = DISTINCTCOUNT(sales_data[Order_ID])
Units Sold = SUM(sales_data[Quantity])
Average Order Value = DIVIDE([Total Sales], [Total Orders])
```

5. Add visuals:
   - Card: Total Sales
   - Card: Total Orders
   - Card: Units Sold
   - Card: Average Order Value
   - Line chart: Month vs Total Sales
   - Bar chart: Category vs Total Sales
   - Bar chart: City vs Total Sales
   - Donut chart: Payment_Mode by Total Sales
6. Add slicers for Region, Category, and Payment_Mode.
7. Save as `Sales_Analytics_Dashboard.pbix` in this folder after you build it.

## Important
The data is synthetic sample data created for practice. Do not present it as real company sales data.
