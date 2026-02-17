-- staging level for our customer.sql model to do the aliasing logic
select
    id as customer_id,
    first_name,
    last_name

from `irn-73707-tra-ff.dbt_setup_a054975.customers_raw`