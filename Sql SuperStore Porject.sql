LOAD DATA INFILE 'D:/New folder/Uploads/samplesuperstore_final.csv'
INTO TABLE superstore
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Order_ID, Order_Date, Ship_Date, Sales, Quantity, Discount, Profit, Category, Sub_Category, Region, State);
SELECT 
  MONTH(Order_Date) AS Month,
  SUM(Sales) AS Monthly_Sales,
  SUM(Profit) AS Monthly_Profit
FROM superstore
GROUP BY Month
ORDER BY Month;
SELECT 
  Region,
  ROUND(SUM(Profit) / NULLIF(SUM(Sales), 0), 2) AS Profit_Margin,
  SUM(Sales) AS Sales,
  SUM(Profit) AS Profit
FROM superstore
GROUP BY Region
ORDER BY Profit DESC;
SELECT 
  Sub_Category,
  SUM(Quantity) AS Total_Units_Sold,
  SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY Sub_Category
ORDER BY Total_Units_Sold DESC;
SELECT 
  'Profit by Sub-Category' AS Section,
  Category,
  Sub_Category,
  ROUND(SUM(Profit) / NULLIF(SUM(Sales), 0), 2) AS Profit_Margin,
  SUM(Sales) AS Total_Sales,
  SUM(Profit) AS Total_Profit,
  NULL AS Month,
  NULL AS Region,
  NULL AS Quantity
FROM superstore
GROUP BY Category, Sub_Category

UNION ALL

SELECT 
  'Monthly Trends',
  NULL, NULL,
  NULL,
  SUM(Sales),
  SUM(Profit),
  MONTH(Order_Date),
  NULL,
  NULL
FROM superstore
GROUP BY MONTH(Order_Date)

UNION ALL

SELECT 
  'Region-Wise Performance',
  NULL, NULL,
  ROUND(SUM(Profit) / NULLIF(SUM(Sales), 0), 2),
  SUM(Sales),
  SUM(Profit),
  NULL,
  Region,
  NULL
FROM superstore
GROUP BY Region

UNION ALL

SELECT 
  'Quantity vs Profit',
  NULL, Sub_Category,
  NULL,
  NULL,
  SUM(Profit),
  NULL,
  NULL,
  SUM(Quantity)
FROM superstore
GROUP BY Sub_Category;