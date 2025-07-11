with 
perorder as(

    select * from {{ref('orders_lineitem')}}
),

aggregated as(

    select 
    orderkey,
    count(linenumber) as total_count,
    sum(total_price) as total_amount
    from perorder
    group by orderkey 
)

select * from aggregated