with staging as (
    select *
   from {{ref('stg_dates')}}
)
   
,transformed as (
   select
       distinct(orderdate) as orderdate
       , extract(year from orderdate) as year
       , extract(week from orderdate) as year_week
       , extract(day from orderdate) as year_day
       , extract(month from orderdate) as month
       , format_date('%Q', orderdate) as trimester
       , format_date('%b', orderdate) as month_name
       , format_date('%a', orderdate) as day_name
   from staging
)

select *
from transformed