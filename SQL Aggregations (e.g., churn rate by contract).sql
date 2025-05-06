CREATE TABLE CustomerChurn (
    customerID VARCHAR(20),
    gender VARCHAR(10),
    SeniorCitizen INT,
    Partner VARCHAR(10),
    Dependents VARCHAR(10),
    tenure INT,
    PhoneService VARCHAR(10),
    MultipleLines VARCHAR(20),
    InternetService VARCHAR(20),
    OnlineSecurity VARCHAR(20),
    OnlineBackup VARCHAR(20),
    DeviceProtection VARCHAR(20),
    TechSupport VARCHAR(20),
    StreamingTV VARCHAR(20),
    StreamingMovies VARCHAR(20),
    Contract VARCHAR(20),
    PaperlessBilling VARCHAR(10),
    PaymentMethod VARCHAR(30),
    MonthlyCharges FLOAT,
    TotalCharges VARCHAR(20),
    Churn VARCHAR(10)
);
LOAD DATA INFILE 'D:/New folder/Uploads/CustomerChurn.csv'
INTO TABLE CustomerChurn
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;
SELECT Contract, COUNT(*) AS total_customers,
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS churned_customers,
ROUND(SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)/COUNT(*)*100, 2) AS churn_rate_pct
FROM CustomerChurn
GROUP BY Contract;