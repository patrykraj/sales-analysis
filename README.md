## Tech Stack
- Python (Pandas, NumPy, Matplotlib, Seaborn)
- SQL (PostgreSQL)
- Jupyter Notebook

## Project Structure

├── data/
├── sql/
│   ├── create_clean_view.sql
│   ├── pareto_analysis.sql
├── notebook/
│   └── rfm_analysis.ipynb
└── README.md

## How to Run

1. Clone repository:
   git clone <repo_link>

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
   - pareto_analysis.sql
4. Update connection settings in notebook
5. Run analysis notebook
