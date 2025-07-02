select * from {{ ref("stg_adwords") }}
UNION ALL
select * from {{ ref("stg_bing") }}
UNION ALL
select * from {{ ref("stg_criteo") }}
UNION ALL
select * from {{ ref("stg_facebook") }}