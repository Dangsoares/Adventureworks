with  source_data as (
    select 
        salesorderid
        , salesreasonid
    from {{ source('Raw','sales_salesorderheadersalesreason')}}
)

select *
from source_data