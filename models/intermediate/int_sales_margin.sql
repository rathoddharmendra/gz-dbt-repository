select
    stg_sales.*,
    stg_sales.quantity * stg_product.purchase_price as purchase_cost,
    ROUND(stg_sales.revenue - (stg_sales.quantity * stg_product.purchase_price),2) as margin
from {{ ref("stg_sales")}} as stg_sales
JOIN {{ ref("stg_product")}} as stg_product
USING(products_id)
