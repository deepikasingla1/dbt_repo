with 
source as(

    select * from {{source('TPCH_SF10','orders')}}
),

renamed as(

    select 
    o_orderkey as orderkey,
    o_orderdate as orderdate
    from source
)

select * from renamed