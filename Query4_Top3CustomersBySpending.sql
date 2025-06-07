-- Query Title: Top 3 Customers by Total Spending
-- Description: Identifies the top 3 customers based on total amount spent.
-- Why It's Important: Helps prioritize customer service, fraud prevention resources, or marketing efforts.

SELECT
    customer_id,
    SUM(transaction_amount) AS total_spent
FROM
    transactions
GROUP BY
    customer_id
ORDER BY
    total_spent DESC
LIMIT 3;
