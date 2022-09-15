with staging as (
    select
        addressid
        , stateid 
        , city
    from {{ref('stg_person_addresses')}}
)

, transformed as (
    select
        row_number() over (order by addressid) as address_sk -- auto-incremental surrogate key
        , addressid
        , stateid
        , city
        , countryname
        , statename
    from staging 
    left join {{ref('stg_person_stateprovince')}}
    on staging.stateid = stg_person_stateprovince.stateprovinceid
    left join {{ref('stg_person_countryregion')}}
    on stg_person_stateprovince.countryregioncode = stg_person_countryregion.countryregioncode
)
select *
from transformed

