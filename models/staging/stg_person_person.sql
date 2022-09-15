with source_data as (
    select 
        businessentityid as personid
        , firstname
        , middlename
        , lastname
    from {{source ('Raw', 'person_person')}}
)

select *
from source_data

