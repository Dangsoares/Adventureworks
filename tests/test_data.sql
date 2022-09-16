with test_validation as (
    select count(distinct salesreasonid) as sum_sales
    from {{('fact_orders')}}
    where orderdate = '2013-02-10'
)

select *
from test_validation
