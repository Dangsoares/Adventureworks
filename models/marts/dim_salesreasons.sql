with staging as (
    select
        salesreasonid
        , reasonname
        , reasontype
    from {{ref('stg_sales_salesreason')}}    
)

, transformed as (
    select
        row_number () over (order by salesreasonid) as salesreason_sk -- auto-incremental surrogate key
        , salesreasonid
        , reasonname
        , reasontype
    from staging
)

select *
from transformed

