with source_data as (
    select 
        stateprovinceid
        , countryregioncode
        , name as statename
        , territoryid
    from {{source('Raw','person_stateprovince')}}
)

select *
from source_data