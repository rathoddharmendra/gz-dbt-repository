-- test granularity before joining two tables + match on the FK

with result as (
    select
        *
    from {{ ref("finance_days")}} as fd
    JOIN {{ ref("int_campaigns_day")}} as icd
    -- LEFT JOIN {{ ref("int_campaigns_day")}} as icd
    USING(date_date)
)
select  
    *,
    operational_margin - ads_cost as ads_margin
from result