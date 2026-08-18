select * from {{ ref('fct_orders') }}
order by order_date desc