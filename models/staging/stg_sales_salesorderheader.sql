with source_data as (
    select 
        salesorderid
        , orderdate
        , status as statusorder
        , customerid
        , salespersonid
        , territoryid
        , billtoaddressid
        , creditcardid
        , taxamt
        , freight
    from {{source('Raw','sales_salesorderheader')}}
)

select *
from source_data