with
source as (
    select * from {{source('TPCH_SF10','customer')}}
),

renamed as (
    select 
    c_custkey,
    c_name,
    c_phone,
    c_nationkey

from source
)

select * from renamed