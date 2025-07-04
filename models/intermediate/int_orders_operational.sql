
select 
    int_orders_margin.*,
    {{ margin_percent('int_orders_margin.margin','int_orders_margin.revenue') }} as margin_percent,
    ship.ship_cost as ship_cost,
    ship.log_cost as log_cost,
    int_orders_margin.margin + ship.shipping_fee - ship.log_cost - ship.ship_cost as operational_margin
from {{ ref("int_orders_margin")}} as int_orders_margin
JOIN {{ ref("stg_ship") }} as ship
USING(orders_id)