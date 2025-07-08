with stg_customers as(

    select * from {{ref('stg_customers')}}
),

stg_orders as(

    select * from {{ref('stg_orders')}}
)

select
c.customer_id,
c.first_name,
c.last_name,
count(o.order_id) as total_orders
from
stg_customers c
left join stg_orders o
on c.customer_id=o.customer_id
group by 1,2,3