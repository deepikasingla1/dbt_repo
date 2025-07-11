with 
orders as(

    select * from {{ref('stg_orders1')}}
),

lineitem as(

    select * from {{ref('stg_lineitem')}}
),

joined as(

    select 
    orders.orderkey,
    orders.orderdate,
    lineitem.linenumber,
    lineitem.quantity * lineitem.unit_price as total_price
    from
    orders 
    left join lineitem
    on orders.orderkey = lineitem.orderkey

)

select * from joined