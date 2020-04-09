select order_id
       ,sum(amount) as order_total
from {{ ref('payment') }}
group by order_id
