with source_data as (
    select *
    from {{ source("raw", "product") }}
),
result as (
    select
        products_id,
        CAST(purchSE_PRICE as FLOAT64) as purchase_price
    from source_data
)
select *
from result;