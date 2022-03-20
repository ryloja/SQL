SELECT
 warehouse.state AS state,
 COUNT(DISTINCT order_id) AS num_orders
FROM
 warehouse_orders.Orders orders
JOIN
 warehouse_orders.Warehouse warehouse ON orders.warehouse_id = warehouse.warehouse_id
GROUP BY
 warehouse.state
 