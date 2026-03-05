# Customer Revenue & RFM Analysis

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


## Tech Stack
- Python (Pandas, NumPy, Matplotlib)
- SQL (PostgreSQL)
- Jupyter Notebook

## Project Structure

├── data/  
├── sql/  
│   ├── create_clean_view.sql  
├── notebook/  
│   └── sales-analysis.ipynb  
└── README.md  

## How to Run

1. Clone repository:
   git clone github.com/patrykraj/sales-analysis

2. Install dependencies:
   pip install -r requirements.txt

3. Open Jupyter Notebook:
   jupyter notebook

4. Run notebook: rfm_analysis.ipynb

## Database Setup

1. Create PostgreSQL database
2. Import raw dataset into database
3. Run SQL scripts from /sql folder:
   - create_clean_view.sql
4. Update connection settings in notebook
5. Run analysis notebook

## Environment Variables

Create a .env file with the following variables:  

DB_HOST=localhost  
DB_NAME=your_database  
DB_USER=your_username  
DB_PASSWORD=your_password  
DB_PORT=5432
