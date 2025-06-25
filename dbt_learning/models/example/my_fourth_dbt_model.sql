with totalspent as (
select sum(o.o_totalprice) as total_spent, c.c_custkey, c.c_name
from {{ source("TPCH_SF10", "customer") }} c
join
{{ source("TPCH_SF10", "orders") }} o
on c.c_custkey= o.o_custkey
group by c.c_custkey, c.c_name
order by c_custkey asc)

select * from totalspent