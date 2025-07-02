-- select * from {{ ref("stg_adwords") }}
-- UNION ALL
-- select * from {{ ref("stg_bing") }}
-- UNION ALL
-- select * from {{ ref("stg_criteo") }}
-- UNION ALL
-- select * from {{ ref("stg_facebook") }}



{{ dbt_utils.union_relations(
    relations=[ref("stg_adwords"), ref("stg_bing"),ref("stg_criteo"),ref("stg_facebook")],
) }}