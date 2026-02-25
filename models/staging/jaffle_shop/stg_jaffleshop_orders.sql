select
    id as order_id,
    user_id as customer_id,
    order_date,
    status,
    _etl_loaded_at

from {{ source('dbt_setup_a054975', 'orders') }}