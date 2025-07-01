
with source_data as (
    select *
    from {{ source("raw", "ship") }}
),
result as (
    select
        orders_id,
        shipping_fee,
        shipping_fee_1,
        logCost,
        ship_cost
    from source_data
)
select *
from result;