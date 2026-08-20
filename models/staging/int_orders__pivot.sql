with payments as ( 
   select * from  {{ ref('stg_stripe__payment') }} 
)
,
pivoted as 
( 
  select order_id , 
  {%- set payment_methods = ['credit_card','coupon','bank_transfer','gift_card'] -%}
     {%- for payment_method in payment_methods -%}
            sum(case when payment_method = '{{ payment_method }}' then {{ cents_to_dollars("payment_amount",4) }} else 0 end ) as
             {{ payment_method }}_amount
            {%- if not loop.last -%} 
                  ,
            {%- endif -%}
     {% endfor %}
  from payments
  group by 1 
)
select * from pivoted