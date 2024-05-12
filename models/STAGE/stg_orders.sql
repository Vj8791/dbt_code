select *, (ORDER_SELLING_PRICE -ORDER_COST_PRICE ) Order_profit 
from {{ ref('raw_order') }}