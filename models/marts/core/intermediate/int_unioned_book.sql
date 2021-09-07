with 

unioned as (

    
    {{ dbt_utils.union_relations(
        relations=[ref('manual_book1'), ref('manual_book2')]
    ) }}

),

renamed as (

    select 
        
        book,
        Date as book_date,
        trader,
        instrument,
        action as book_action,
        cost,
        currency,
        volume,
        cost_per_share,
        stock_exchange_name

    from unioned 
    
)

select * from renamed
