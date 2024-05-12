select * 
from {{ source('rawdata', 'customer') }}