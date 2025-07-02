-- {{ config(materialized='table') }}
select
    o.date_date,
    count(o.orders_id) as transactions_count,
    ROUND(SUM(o.revenue),2) as total_revenue,
    ROUND(SUM(o.revenue)/COUNT(o.orders_id),2) as average_basket_value,
    ROUND(SUM(o.margin),2) as margin,
    ROUND(SUM(o.operational_margin),2) as operational_margin,
    ROUND(SUM(o.purchase_cost),2) as total_purchase_cost,
    ROUND(SUM(o.ship_cost),2) as total_ship_cost,
    ROUND(SUM(o.log_cost),2) as total_log_cost,
    ROUND(SUM(o.quantity),2) as total_quantity_sold
from {{ ref("int_orders_operational")}} as o
group by date_date
