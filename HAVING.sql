SELECT
 Warehouse.warehouse_id,
 CONCAT(Warehouse.state, ': ', Warehouse.warehouse_alias) AS warehouse_name,
 COUNT(Orders.order_id) AS numer_or_orders,
 (SELECT
   COUNT(*)
   FROM warehouse_orders.Orders Orders)
  AS total_orders,
  CASE
    WHEN COUNT(Orders.order_id)/(SELECT COUNT(*) FROM warehouse_orders.Orders Orders) <= 0.20
	THEN "fulfilled 0-20% of Orders"
	WHEN COUNT(Orders.orders_id)/(SELECT COUNT(*) FROM warehouse_orders.Orders Orders) > 0.20
	AND COUNT(Orders.orders_id)/(SELECT COUNT(*) FROM warehouse_orders.Orders Orders) <= 0.20
	THEN "Fulfulled more than 60% of Orders"
  ELSE "Fulfilled more than 60% of Orders"
  END AS fulfillment_summary
  
FROM warehouse_orders.Warehouse Warehouse
LEFT JOIN warehouse_orders.Orders Orders
  ON Orders.warehouse_id = Warehouse.warehouse_id
GROUP BY
 Warehouse.warehouse_id
 warehouse_name
HAVING
  COUNT(Orders.order_id) > 0