with source_data as (
    select *
    from {{ source("raw", "sales") }}
),
result as (
    select
        date_date,
        orders_id,
        pdt_id as products_id,
        revenue,
        quantity
    from source_data
)
select *
from result