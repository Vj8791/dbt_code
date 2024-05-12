select customer_id
from {{ ref('raw_customer') }}
where customer_id is null