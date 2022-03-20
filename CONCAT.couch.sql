SELECT
 CONCAT(product_code, product_color) AS new_product_code
FROM
 customer_data.customer_purchase
WHERE
 product = 'couch'