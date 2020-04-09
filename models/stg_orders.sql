select
    o.ID as order_id
    ,user_id as customer_ids
    ,order_date
    ,status
    ,order_total
from raw.jaffle_shop.orders o
left join {{ ref('order_totals') }} ot on o.ID = ot.order_id