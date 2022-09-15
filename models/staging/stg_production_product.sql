with source_data as (
    select 
        productid as product_id
        , name as productname
        , color
        , size
        , weight
        , class
        , discontinueddate
    from {{source ('Raw','production_product')}}
)

select *
from source_data