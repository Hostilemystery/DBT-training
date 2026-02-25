SELECT 
    order_id,
    sum(amount) as total_amount

FROM {{ ref ('stg_stripe__payments') }}
GROUP BY 1
HAVING sum(amount) < 0