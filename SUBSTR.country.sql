SELECT customer_id,
 SUBSTR(country, 1,3) AS new_country
FROM
 customer
ORDER BY
 country
