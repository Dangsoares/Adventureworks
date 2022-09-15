with source_data as (
    select 
        countryregioncode, 
        name as countryname
    from {{ source('Raw','person_countryregion')}}
)

select *
from source_data