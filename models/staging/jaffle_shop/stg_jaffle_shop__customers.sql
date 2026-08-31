select
    id as customer_id,
    split_part(name, ' ', 1) as first_name,
    split_part(name, ' ', -1) as last_name
from raw.jaffle_shop.customers
