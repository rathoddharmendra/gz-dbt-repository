
select  
    *,
    ROUND(revenue - purchase_cost,2) as margin
from {{ ref("int_sales_margin")}}