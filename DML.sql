
SELECT customer_name FROM customer WHERE customer_name LIKE 'Ma%';

SELECT quantity,SUM(item.unit_price*order_item.quantity) 
from order_item NATURAL JOIN item 
GROUP by (order_item.order_id)

SELECT order_id FROM shipment,warehouse WHERE warehouse.warehouse_id=shipment.warehouse_id AND warehouse.warehouse_city='Arica';

SELECT sum(item.unit_price*order_item.quantity)  FROM shipment NATURAL JOIN order_item NATURAL JOIN item where warehouse_id=8;

SELECT warehouse.warehouse_id,warehouse.warehouse_city,COUNT(order_id) FROM warehouse left join shipment on warehouse.warehouse_id=shipment.warehouse_id GROUP by (warehouse.warehouse_id)

SELECT customer.customer_name,COUNT(order_id) FROM customer left Join `order` on customer.customer_id = `order`.customer_id GROUP BY (customer.customer_id) 

SELECT * FROM item LEFT OUTER JOIN order_item ON item.item_id=order_item.item_id WHERE order_item.item_id is null;
