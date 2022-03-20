SELECT
 CAST(date AS date) AS date_only,
 purchase_price
FROM
 customer_data.customer_purchase
WHERE
 date BETWEEN '2020-12-01' AND '2020-12-31'