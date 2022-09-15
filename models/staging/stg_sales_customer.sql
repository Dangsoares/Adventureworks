with source_data as (
    select 
        customerid
        , personid
        , storeid
    from {{source('Raw','sales_customer')}}
)

select *
from source_data