-- select
--     DISTINCT(paid_source)
-- from {{ ref("int_campaigns")}}

-- select
--     *
-- from {{ ref("int_campaigns")}}


-- select
--     date_date,
--     SUM(ads_cost) as ads_cost,
--     SUM(impression) as impression,
--     SUM(click) as click
-- from {{ ref("int_campaigns")}}
-- group by date_date
-- order by date_date desc


-- select
--     *
-- from {{ ref("finance_days")}} as fd
-- JOIN {{ ref("int_campaigns_day")}} as icd
-- USING(date_date)



    -- select 
    --     EXTRACT(MONTH FROM date_date) as date_month,
    --     SUM(transactions_count) as transactions_count,
    --     SUM(total_revenue) as total_revenue,
    --     AVG(average_basket_value) as average_basket_value,
    --     SUM(margin) as margin,
    --     SUM(total_purchase_cost) as total_purchase_cost,
    --     SUM(total_ship_cost) as total_ship_cost,
    --     SUM(total_log_cost) as total_log_cost,
    --     SUM(total_quantity_sold) as total_quantity_sold,
    --     SUM(ads_cost) as ads_cost,
    --     SUM(impression) as impression,
    --     SUM(click) as click,
    --     SUM(ads_margin) as ads_margin
    -- from {{ ref("finance_campaigns_day") }}
    -- group by 1
    -- order by 1 desc


    -- select 
    --     *
    -- from `data-analytics-ns`.`gz_raw_data`.`raw_gz_product`
    -- where products_id is null


with dbt_test__target as (

  select campaign_key as unique_field
  from `data-analytics-ns`.`dbt_drathod`.`int_campaigns`
  where campaign_key is not null

)

select
    unique_field,
    count(*) as n_records

from dbt_test__target
group by unique_field
having count(*) > 1