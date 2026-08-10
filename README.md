# Sales Analytics ETL Project | Python & SQL Server

## Project Overview

This project demonstrates an end-to-end ETL (Extract, Transform, Load) workflow using Python, Pandas, and Microsoft SQL Server. Customer, product, and order data are extracted from CSV files, cleaned and transformed in Python, loaded into SQL Server, and analyzed using SQL queries.

## Business Objective

The goal is to create a clean sales dataset that can support business analysis such as:

- Total sales revenue
- Product performance
- Customer spending
- Revenue by city
- Monthly sales trends
- Units sold by product

## Tools & Technologies

Python • Pandas • SQL • Microsoft SQL Server • SQL Server Management Studio (SSMS) • SQLAlchemy • PyODBC • Jupyter Notebook • Matplotlib

## Project Structure

```text
Sales_ETL_Project/
│
├── data/
│   ├── customers.csv
│   ├── products.csv
│   └── orders.csv
│
├── notebooks/
│   └── Sales_ETL.ipynb
│
├── sql/
│   └── analysis_queries.sql
│
├── .gitignore
├── README.md
└── requirements.txt
```

## ETL Process

### Extract
The pipeline reads three CSV files containing customer, product, and order information.

### Transform
The datasets are joined using `CustomerID` and `ProductID`. The pipeline checks for missing values and duplicates, converts order dates to a date format, and calculates `TotalAmount` as:

`Quantity × Price`

### Load
The transformed dataset is loaded into a Microsoft SQL Server table named `dbo.Sales` using SQLAlchemy and PyODBC.

### Analyze
SQL queries are used to calculate revenue, identify top customers and products, compare city performance, and review monthly sales trends.

## How to Run

1. Clone or download this repository.
2. Install the required packages:

```bash
pip install -r requirements.txt
```

3. Create a SQL Server database called `Sales_ETL_DB`.
4. Open `notebooks/Sales_ETL.ipynb`.
5. Replace `YOUR_SERVER_NAME` in the connection cell with your SQL Server instance name.
6. Run all notebook cells in order.

The notebook uses Windows Authentication:

```python
"SERVER=YOUR_SERVER_NAME;"
"DATABASE=Sales_ETL_DB;"
"Trusted_Connection=yes;"
```

No passwords should be committed to GitHub.

## Sample Business Insights

Using the included sample dataset, the pipeline helps answer questions such as which products generate the most revenue, which customers spend the most, and which cities contribute the highest sales.

## Skills Demonstrated

Python • Pandas • SQL • ETL Development • Data Cleaning • Data Transformation • Data Validation • Microsoft SQL Server • Business Analysis • Data Visualization

## Resume Description

**Sales Analytics ETL Project | Python, Pandas & SQL Server**  
Built an ETL pipeline to extract, transform, and load customer, product, and order data into SQL Server, enabling SQL-based analysis of revenue, customer trends, and product performance.
