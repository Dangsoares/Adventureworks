with source_data as (
    select
        orderdate
    from {{source('Raw', 'sales_salesorderheader')}}
)

    select *
    from source_data