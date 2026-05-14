USE customer_churn_project;

SELECT * FROM churn_data;

DESCRIBE churn_data;

SELECT COUNT(*) AS Total_Customers
FROM churn_data;

SELECT COUNT(*) AS Churned_Customers
FROM churn_data
WHERE Churn = 'Yes';

SELECT 
    (COUNT(CASE WHEN Churn = 'Yes' THEN 1 END) * 100.0 / COUNT(*)) 
    AS Churn_Percentage
FROM churn_data;

SELECT gender, COUNT(*) AS Total_Customers
FROM churn_data
GROUP BY gender;

SELECT Contract, COUNT(*) AS Customers
FROM churn_data
GROUP BY Contract;

SELECT Contract, COUNT(*) AS Churned_Customers
FROM churn_data
WHERE Churn = 'Yes'
GROUP BY Contract;

SELECT InternetService, COUNT(*) AS Customers
FROM churn_data
GROUP BY InternetService;

SELECT SeniorCitizen, COUNT(*) AS Customers
FROM churn_data
GROUP BY SeniorCitizen;