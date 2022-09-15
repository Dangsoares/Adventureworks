with source_data as (
    select 
        salesorderid
        , orderqty
        , productid
        , specialofferid
        , unitprice
        , unitpricediscount
    from {{source ('Raw','sales_salesorderdetail')}}
)

select *
from source_data