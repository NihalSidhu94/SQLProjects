/*
Q1
Select customers.customer_fname, customers.customer_lname
from customers
left join orders on customers.customer_id = orders.order_customer_id;
*/

/*
Q2
Select customers.customer_fname, customers.customer_lname
from customers
left join orders on customers.customer_id = orders.order_customer_id
where orders.order_customer_id is null;
*/

/*
Q3
select sum(order_status)
from orders; 
*/


/*
-- Q4
Select order_items.order_item_subtotal, orders.order_customer_id
from order_items
left join orders on order_items.order_item_id = orders.order_id
*/

/*
-- Q5
Select order_items.order_item_subtotal, orders.order_customer_id, orders.order_status
from order_items
left join orders on order_items.order_item_id = orders.order_id
where orders.order_status like 'COMPLETE' or orders.order_status like 'CLOSED';
*/





/*
Q6
Select orders.order_date, sum(order_items.order_item_subtotal)
from orders
left join order_items on orders.order_id = order_items.order_item_order_id
group by order_date;
*/



/*
-- Q7       Display daily revenue for each week.
select  { fn WEEK(orders.order_date) } AS Week, sum(order_items.order_item_subtotal)
from orders
left join order_items on orders.order_id = order_items.order_item_order_id
group by { fn WEEK(orders.order_date) }
Order by { fn WEEK(orders.order_date) };
*/



/*
-- Q8       Display daily revenue for each month.
select  { fn MONTH(orders.order_date) } AS Month, sum(order_items.order_item_subtotal)
from orders
left join order_items on orders.order_id = order_items.order_item_order_id
group by { fn MONTH(orders.order_date) }
Order by { fn MONTH(orders.order_date) };
*/


-- 9.       Calculate the Daily product Revenue.
/*
Select orders.order_date, sum(order_items.order_item_subtotal)
from orders
left join order_items on orders.order_id = order_items.order_item_order_id
group by order_date;
order by order_date;
*/







