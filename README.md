# Walmart Sales Data Analysis

📌 **About the Project**  
This project covers an end-to-end data analysis workflow. The dataset was cleaned and pre-processed using Python, and then advanced SQL queries were executed on PostgreSQL to solve business-related problems.  

The goal of this project is not only to demonstrate technical applications but also to highlight data-driven thinking and problem-solving skills.  

---

⚙️ **Technical Skills**  

Key tools and techniques applied in this project:  

- **Python (Pandas, NumPy, SQLAlchemy)** → data cleaning, transformation, and database integration  
- **PostgreSQL** → advanced SQL queries, window functions, and CTE (Common Table Expressions)  
- **Kaggle API** → automated dataset download and project integration  
- **Data Pipeline Setup** → designing a workflow from raw data to cleaned data, then to SQL analysis  

---

🧹 **Data Cleaning & Preprocessing**  

Steps applied in cleaning and preparing the dataset:  

- **Remove Duplicates**: Identify and remove duplicate entries to avoid skewed results.  
- **Handle Missing Values**: Drop rows or columns with missing values if they are insignificant; fill values where essential.  
- **Fix Data Types**: Ensure all columns have consistent data types (e.g., dates as datetime, prices as float).  
- **Currency Formatting**: Use `.replace()` to handle and format currency values for analysis.  
- **Validation**: Check for any remaining inconsistencies and verify the cleaned data.  

---

🧠 **Analytical Approach**  

Business problems addressed in this project:  

- Comparison of different payment methods and their sales performance  
- Identifying the highest-rated categories for each branch  
- Analyzing transaction volume to determine the busiest days  
- Categorizing sales by time of day (morning, afternoon, evening)  
- Year-over-year revenue comparison and revenue decline ratio analysis  

Each query was designed to answer a specific business question, and the results were interpreted to generate actionable business insights.  

---

📂 **Project Structure**  

- `data/` → raw and cleaned dataset files  
- `notebooks/` → Python notebooks for data cleaning and preparation  
- `sql/` → SQL scripts for PostgreSQL analysis  
- `README.md` → project documentation  

---

📦 **Requirements**  

To run this project, you need the following:  

- **Python Version**: 3.8+  
- **SQL Databases**: PostgreSQL  
- **Python Libraries**:  
  - `pandas`  
  - `numpy`  
  - `sqlalchemy`  
  - `pg8000`  
- **Other Tools**: Kaggle API Key (for dataset downloading)  

Install dependencies with:  

```bash
pip install pandas numpy sqlalchemy pg8000
```  

And configure your Kaggle API key for automatic dataset download.  

---

🚀 **Key Takeaways**  

Skills and competencies demonstrated throughout this project:  

- **Technical proficiency**: writing advanced SQL queries, preparing data with Python, and managing database integration  
- **Analytical mindset**: deriving insights from data, solving business problems using evidence-based approaches  
- **Data pipeline design**: building a structured process from raw data to actionable insights  

