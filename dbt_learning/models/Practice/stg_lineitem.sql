with source as(

    select * from {{source('TPCH_SF10','lineitem')}}
),

renamed as(

    select 
    l_orderkey as orderkey,
    l_linenumber as linenumber,
    l_quantity as quantity,
    l_extendedprice as unit_price

    from source
)

select * from renamed