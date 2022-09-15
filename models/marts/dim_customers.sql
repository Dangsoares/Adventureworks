with staging as (
    select
        customerid
        , personid
        , storeid
    from {{ref('stg_sales_customer')}}
)

, transformed as (
    select 
        row_number () over (order by customerid) as customer_sk -- auto-incremental surrogate key
        , customerid
        , personid
        , storeid
        , firstname
        , middlename
        , lastname
    from staging
    left join {{source('Raw', 'person_person')}}
    on person_person.businessentityid = customerid
)

select * 
from transformed