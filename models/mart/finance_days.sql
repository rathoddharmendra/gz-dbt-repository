-- Date
-- Total number of transactions
-- Total revenue
-- Average Basket
-- Operational Margin
-- Total purchase cost
-- Total shipping fees
-- Total log costs
-- Total quantity of products sold.


select
    o.date_date,
    count(o.orders_id) as transactions_count,
    SUM(o.revenue) as total_revenue,
    SUM(o.revenue)/COUNT(o.orders_id) as average_basket_value,
    SUM(o.operational_margin) as operational_margin,
    SUM(o.purchase_cost) as total_purchase_cost,
    SUM(o.ship_cost) as total_ship_cost,
    SUM(o.log_cost) as total_log_cost,
    SUM(o.quantity) as total_quantity_sold
from {{ ref("int_orders_operational")}} as o
group by date_date
