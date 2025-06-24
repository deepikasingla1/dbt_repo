with totalcustomers as (
        select count(1) as total from {{ source("TPCH_SF10", "customer") }}
    )

select *
from totalcustomers
