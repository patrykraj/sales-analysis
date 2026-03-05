# Customer Revenue & RFM Analysis

## Project Title

Customer Purchasing Behavior & Revenue Concentration Analysis using RFM Segmentation

---

## Business Problem

Retail and e-commerce businesses often struggle to understand:

- Which customers generate the majority of revenue?
- How concentrated revenue is across the customer base
- Which customers are at risk of churn
- How to segment customers for targeted retention strategies

This project aims to analyze transactional data to uncover revenue concentration patterns and segment customers using the RFM (Recency, Frequency, Monetary) framework.

The ultimate objective is to provide actionable insights for customer retention, value optimization, and strategic decision-making.

---

## Dataset

The dataset contains **541,909 transactional records** with the following attributes:

- Invoice number
- Product information (StockCode, Description)
- Quantity
- Unit price
- Invoice date
- Customer ID
- Country

After cleaning, the final analytical dataset contains **397,884 valid purchase records** and **4,338 unique customers**.

The data reflects typical retail behavior with strong right-skewness and long-tail distribution patterns.

---

## Data Cleaning

Data preparation was performed using PostgreSQL views to ensure a clear separation between transformation and analysis layers.

The following steps were applied:

- Removed transactions with non-positive Quantity
- Excluded canceled invoices (InvoiceNo starting with 'C')
- Removed rows with missing CustomerID
- Calculated revenue as Quantity × UnitPrice

A dedicated SQL view (`clean_transactions`) was created to store cleaned and transformed transactional data.

This ensures that all downstream analysis is based on consistent, revenue-generating transactions only.

---

## Analysis Overview

### 1. Customer-Level Aggregation

Transactional data was aggregated to the customer level to compute:

- TotalRevenue
- TotalOrders
- TotalTransactions
- TotalQuantity
- Average Order Value
- Recency (days since last purchase)

This transformation shifts the perspective from transaction-level to customer-level behavior.

---

### 2. Revenue Concentration & Pareto Analysis

Customers were ranked by total revenue contribution.

Key finding:

- Approximately **26% of customers generate 80% of total revenue**.

This confirms a strong but typical revenue concentration pattern for retail environments.

Revenue distribution is highly right-skewed, with a small subset of customers contributing disproportionately to total sales.

Business implication:
High-value customer retention is strategically critical.

---

### 3. RFM Segmentation

Customers were segmented using quartile-based RFM scoring:

- **Recency (R)** – How recently the customer purchased
- **Frequency (F)** – Number of unique orders
- **Monetary (M)** – Total revenue generated

Each metric was divided into 4 quantiles to generate RFM scores.

Segments such as:

- High R, High F, High M → Core / Champion customers
- Low R, Low F → At-risk customers

This enables targeted marketing strategies and lifecycle-based retention planning.

---

### 4. Revenue by Monetary Segment

Revenue analysis by Monetary score confirms clear stratification:

- Highest Monetary segment contributes the dominant share of revenue
- Clear gradient from M4 → M1

This validates the effectiveness of monetary segmentation.

---

### 5. Geographic Revenue Distribution

Revenue concentration by country shows:

- Approximately 82% of total revenue originates from a single domestic market

This indicates strong domestic dependence and limited international diversification.

---

### 6. Seasonality Analysis

Monthly revenue trends reveal:

- Clear growth trajectory during the observed period
- Strong Q4 peak consistent with retail seasonality

This confirms typical holiday-driven sales acceleration.

---

### 7. Top Products Analysis

Top 10 products by total revenue were identified to understand product-level contribution.

Findings show significant product-level concentration, supporting inventory and promotional optimization strategies.

---

## Tools & Technologies

- Python (Pandas, NumPy, Matplotlib)
- PostgreSQL
- SQL (CTEs, window functions)
- SQLAlchemy
- Jupyter Notebook

---

## Project Structure

```
project/
│
├── sql/
│   └── create_clean_view.sql
│
├── src/
│   └── config.py
│
├── notebooks/
│   └── sales-analysis.ipynb
│
├── .env
├── requirements.txt
└── README.md
```

---

## Key Takeaways

- Revenue follows a long-tail distribution
- A relatively small group of customers drives business performance
- RFM segmentation provides clear customer stratification
- Business risk exists due to geographic concentration
- Seasonality plays a significant role in revenue dynamics

This project demonstrates end-to-end analytical workflow: data cleaning, aggregation, segmentation, visualization, and business interpretation.
