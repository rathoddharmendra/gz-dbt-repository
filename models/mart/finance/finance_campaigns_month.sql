-- test granularity before joining two tables + match on the FK

select 
    EXTRACT(MONTH FROM date_date) as date_month,
    SUM(transactions_count) as transactions_count,
    SUM(total_revenue) as total_revenue,
    AVG(average_basket_value) as average_basket_value,
    SUM(margin) as margin,
    SUM(total_purchase_cost) as total_purchase_cost,
    SUM(total_ship_cost) as total_ship_cost,
    SUM(total_log_cost) as total_log_cost,
    SUM(total_quantity_sold) as total_quantity_sold,
    SUM(ads_cost) as ads_cost,
    SUM(impression) as impression,
    SUM(click) as click,
    SUM(ads_margin) as ads_margin
from {{ ref("finance_campaigns_day") }}
group by 1
order by 1 desc