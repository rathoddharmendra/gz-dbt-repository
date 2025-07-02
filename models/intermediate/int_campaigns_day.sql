select
    date_date,
    SUM(ads_cost) as ads_cost,
    SUM(impression) as impression,
    SUM(click) as click
from {{ ref("int_campaigns")}}
group by date_date
order by date_date desc;


-- date_date,
--         paid_source,
--         campaign_key,
--         campgn_name as campaign_name,
--         cast(ads_cost as FLOAT64) as ads_cost,
--         impression,
--         click