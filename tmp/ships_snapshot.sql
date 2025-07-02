
{ % snapshot products_snapshot %}

{{ config(
    target_schema="dbt_snapshots",
    unique_key="orders_id",
    strategy="check",
    check_cols="all",
) 
}}

select * from {{ ref("stg_ship") }}

{% endsnapshot %}