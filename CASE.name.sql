SELECT
  customer_id,
  CASE
    WHEN first_name = 'Tnoy' THEN 'Tony'
    WHEN first_name = 'Tmo' THEN 'Tom'
    WHEN first_name = 'Rachle' THEN 'Rachel'
    ELSE first_name
    END AS cleaned_name
FROM
  customer_data.customer_name