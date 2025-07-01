
select  
    *,
    revenue - purchase_cost as margin
from {{ ref("int_sales_margin")}}