with 
    staging as (
        select * 
    from {{ref('stg_production_product')}}
)

, transformed as ( 
    select
        row_number () over (order by product_id) as product_sk -- auto-incremental surrogate key
        , product_id
        , productname
        , color
        , size
        , weight
        , class
    from staging
)

select * from transformed