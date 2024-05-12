select 	o.ORDER_ID ,
	o.ORDER_DATE,
	o.SHIP_DATE,
	o.SHIP_MODE ,
	o.CUSTOMER_ID ,
	o.ORDER_COST_PRICE ,
	o.ORDER_SELLING_PRICE,
	c.CUSTOMER_NAME ,
	c.SEGMENT ,
	c.COUNTRY ,
	c.STATE ,
   	p.CATEGORY ,
	p.PRODUCT_ID ,
	p.PRODUCT_NAME ,
	p.SUBCATEGORY ,
     (o.ORDER_COST_PRICE - o.order_selling_price) profit
from {{ ref('raw_order') }} as o 
 left join 
    {{ ref('raw_customer') }} as c
on o.customer_id = c.customer_id
left join
    {{ ref('RAW_PRODUCT') }} p
on o.PRODUCT_ID = p.PRODUCT_ID
