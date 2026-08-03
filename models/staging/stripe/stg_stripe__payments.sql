select 
    orderid as order_id,
    paymentmethod as payment_method,
    status as payment_status,
    amount as payment_amount
    from raw.stripe.payment