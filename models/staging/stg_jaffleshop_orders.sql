select
    id as order_id,
    user_id as customer_id,
    order_date,
    status

from `irn-73707-tra-ff.dbt_setup_a054975.orders_raw`