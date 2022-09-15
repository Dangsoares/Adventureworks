with source_data as (
    select 
        salesreasonid
        , name as reasonname 
        , reasontype
    from {{ source('Raw', 'sales_salesreason')}}
)

select *
from source_data