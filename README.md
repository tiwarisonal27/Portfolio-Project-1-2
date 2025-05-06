#  Customer Churn Analysis – Telecom Industry
This project identifies the factors contributing to customer churn in a telecom dataset using Python, SQL, Tableau, and Power BI. It includes data cleaning, visualization, predictive modeling, and interactive dashboards.
## Objective
To reduce churn by identifying patterns and building a predictive model that helps telecom businesses retain high-value customers.
## Dataset
- **Source**: Synthetic telecom customer dataset
- **Records**: 7,043 customers
- **Key Features**: Gender, SeniorCitizen, Contract, MonthlyCharges, Tenure, InternetService, StreamingTV, and Churn
- **Added Feature**: `ProfitSegment` (Low / Medium / High) based on `MonthlyCharges`

---

##  Tools & Technologies
- **Python**: Data cleaning, EDA, ML modeling (`pandas`, `matplotlib`, `seaborn`, `sklearn`)
- **MySQL**: SQL aggregation and querying
- **Tableau**: Interactive dashboards
- **Power BI**: Business reporting visuals

---

##  Key Visuals
### Python Plots:
- Churn Distribution
- MonthlyCharges vs Tenure
- Churn by Profit Segment

### Tableau Dashboards:
- Churn by Contract & Profit Segment
- Churn Heatmap: Internet vs Streaming Services
- Interactive filters: Gender, InternetService, Contract

### Power BI:
- Pie Chart: Churn Distribution
- Bar Chart: Churn by Contract
- Slicers: Gender, Contract, InternetService

---

## Machine Learning
- **Model**: Random Forest Classifier
- **Data Prep**: One-hot encoding, null handling, type casting
- **Explainability**: SHAP for feature importance (Tenure, Contract, MonthlyCharges were top drivers)

---

##  Business Insights
- Highest churn: Month-to-month customers
-  New users (low tenure) = higher churn risk
-  High-profit segment also shows churn → need loyalty offers
-  Streaming and internet service usage impact churn behavior

---

##  Deliverables
- `Customer_Churn_Analysis.ipynb`
- `CustomerChurn_Final_Cleaned.csv`
- EDA plots (PNG)
- `Churn_Report.pdf` and `Churn_Detailed_Report.pdf`
- `Customer_Churn_Presentation.pdf`
- Tableau Workbook (`.twbx`) 
- Power BI Dashboard (`.pbix`) 

---

##  How to Run
1. Clone this repository
2. Open and run `Customer_Churn_Analysis.ipynb` in Jupyter
3. Use the cleaned CSV in Tableau/Power BI
4. Review PDFs and dashboards for insights and presentation

---

##  Date Completed
**May 2025**

---

## Author
Satyam Shaw
_Data Science Portfolio Project_1

# Retail Business Profitability & Inventory Optimization

##  Objective
The goal of this project is to analyze retail sales data to:
- Identify profit-draining product categories
- Optimize inventory efficiency
- Uncover seasonal trends in sales and profit
- Deliver insights via interactive dashboards

---

##  Tools & Technologies
- **Python** (Pandas, Matplotlib, Seaborn)
- **MySQL** (Data aggregation logic)
- **Tableau** & **Power BI** (Dashboard visualization)
- **CSV + Jupyter Notebook** (Final deliverables)

---

##  Dataset Summary
The dataset contains:
- `Order_Date`, `Ship_Date`, `Category`, `Sub_Category`, `Region`, `State`
- Sales metrics: `Sales`, `Quantity`, `Discount`, `Profit`

---

##  Features & Analysis
-  **Profitability Analysis** by category and sub-category
-  **Region-wise performance** comparison
-  **Monthly sales & profit trends**
-  **Inventory efficiency** (Quantity vs. Profit)
-  **Profit Margin Segmentation**: High, Moderate, Low, Loss
-   All analyses merged into a single CSV for easy dashboarding

---

##  Dashboards
- Tableau: Profit heatmaps, KPI cards, sales trends, sub-category bar charts
- Power BI: Interactive filters, summary tiles, region-wise drilldowns

---

##  Key Insights
- Office Supplies show low margins despite high volume
- Nov–Dec sees a spike in sales across regions
- Some sub-categories incur consistent losses and need pricing review
- West region generates strong revenue but moderate margin

---

##  Deliverables
- `samplesuperstore_final.csv` – Cleaned dataset
-  `combined_analysis.csv` – All metrics merged into one
-  `Retail_Profitability.ipynb` – Python EDA + plots
-  Tableau Dashboard (`.twbx`)
-  Power BI Report (`.pbix`)
-  `Retail_Report.pdf` – Executive summary
-  `Retail_Detailed_Report.pdf` – 10-section full report
-  `README.md` – This file!
## Author
Satyam Shaw
_Data Science Portfolio Project_2
