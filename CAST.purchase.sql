SELECT
 CAST(purchase_price AS FLOAT64)
FROM
 customer_data.customer_purchase
ORDER BY
 CAST(purchase_price AS FLOAT64) DESC