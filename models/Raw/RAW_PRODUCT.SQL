select * 
from {{ source('rawdata', 'product') }}