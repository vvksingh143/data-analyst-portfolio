"""Basic sales analysis for a beginner Data Analyst portfolio project."""
from pathlib import Path
import pandas as pd

DATA_PATH = Path(__file__).resolve().parents[1] / "data" / "sales_data.csv"

def main():
    df = pd.read_csv(DATA_PATH, parse_dates=["Order_Date"])
    print("\n--- Dataset Preview ---")
    print(df.head())
    print("\n--- Dataset Info ---")
    print(df.info())
    print("\n--- KPI Summary ---")
    print(f"Total sales: ₹{df['Sales_INR'].sum():,.0f}")
    print(f"Total orders: {df['Order_ID'].nunique()}")
    print(f"Units sold: {df['Quantity'].sum()}")
    print(f"Average order value: ₹{df['Sales_INR'].sum() / df['Order_ID'].nunique():,.2f}")
    print("\n--- Monthly Sales ---")
    print(df.groupby("Month", sort=False)["Sales_INR"].sum().sort_index())
    print("\n--- Sales by Category ---")
    print(df.groupby("Category")["Sales_INR"].sum().sort_values(ascending=False))
    print("\n--- Sales by City ---")
    print(df.groupby("City")["Sales_INR"].sum().sort_values(ascending=False))

if __name__ == "__main__":
    main()
