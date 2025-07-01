
select 
    int_orders_margin.*,
    ship.ship_cost as ship_cost,
    ship.log_cost as log_cost,
    int_orders_margin.margin + ship.shipping_fee - ship.logCost - ship.ship_cost as operational_margin
from {{ ref("int_orders_margin")}} as int_orders_margin
JOIN {{ ref("stg_ship") }} as ship
USING(orders_id)