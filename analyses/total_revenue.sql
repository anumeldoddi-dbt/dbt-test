with final as (
select * from {{ ref('stg_stripe__payment') }}) 
select payment_method,sum(payment_amount) from final
where lower(payment_status)='success'
group by payment_method 