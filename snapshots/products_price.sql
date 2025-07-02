
{ % snapshot products_snapshot %}

{{ config(
    target_database="dbt_snapshots",
    target_schema="dbt_snapshots",
    unique_key="products_id",
    strategy="check",
    check_cols="all"
) 
}}

select * from {{ ref("stg_product") }}

{% endsnapshot %}


 
    -- target_database="<string>",
    -- unique_key="<column_name_or_expression>",
    -- strategy="timestamp" | "check",
    -- updated_at="<column_name>",
    -- check_cols=["<column_name>"] | "all"
    -- invalidate_hard_deletes : true | false