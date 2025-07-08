with customers as (
    select * from {{ ref('new_customer') }}  
),

nation as (
    select * from {{ ref('nation') }} 
)

select 
    c.c_custkey,
    c.c_name,
    c.c_nationkey,
    n.country
from customers c
inner join nation n
  on c.c_nationkey = n.c_nationkey