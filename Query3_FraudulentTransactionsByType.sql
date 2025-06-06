-- Query Title: Fraudulent Transactions by Type
-- Description: Counts fraud cases by type.
-- Why It’s Important: Identifies common fraud patterns to guide prevention efforts.

SELECT 
    fraud_type, 
    COUNT(*) AS total_fraud_cases
FROM 
    transactions
WHERE 
    fraud_flag = 1
GROUP BY 
    fraud_type
ORDER BY 
    total_fraud_cases DESC;
