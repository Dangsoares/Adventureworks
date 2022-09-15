with
source_data as (
    select 
    creditcardid
    , cardtype
    from {{source('Raw','sales_creditcard')}}
)

select *
from source_data