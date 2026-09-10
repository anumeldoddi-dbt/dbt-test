with orders as (
    select * from {{ ref('stg_jaffle_shop__orders') }}
),

final as (
    select
        order_id,
        customer_id,
        order_date,
        0 as amount
    from orders
)

select * from final
