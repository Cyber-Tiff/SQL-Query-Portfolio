-- Query Title: Average Resolution Time for Fraud Cases
-- Description: Calculates the average time it takes to resolve fraud cases.
-- Why It’s Important: Helps monitor efficiency and identify process improvements.

SELECT 
    AVG(resolution_time) AS avg_resolution_days
FROM 
    transactions
WHERE 
    fraud_flag = 1;
