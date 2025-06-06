-- Query Title: Total Transactions by Customer
-- Description: Counts the total transactions for each customer.
-- Why It’s Important: Helps identify high-volume customers who may need closer fraud monitoring.

SELECT 
    customer_id, 
    COUNT(transaction_id) AS total_transactions
FROM 
    transactions
GROUP BY 
    customer_id
ORDER BY 
    total_transactions DESC;
  
