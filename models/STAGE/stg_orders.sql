select o.*
    , p.*
    , (o.ORDER_COST_PRICE - o.order_selling_price) profit
from {{ ref('raw_order') }} as o 
 join 
    {{ ref('raw_customer') }} as c
on o.customer_id = c.customer_id
 join 
    {{ ref('RAW_PRODUCT') }} as  p
on p.product_id =o.product_id