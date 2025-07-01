
with source_data as (
    select *
    from {{ source("raw", "ship") }}
),
result as (
    select
        orders_id,
        shipping_fee,
        logCost,
        CAST(ship_cost as INT64) as ship_cost
    from source_data
)
select *
from result