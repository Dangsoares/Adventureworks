with
source_data as (
    select 
        addressid
        , stateprovinceid as stateid 
        , city
    from {{source('Raw','person_address')}}
)

    select *
    from source_data
   