-- with all_values as (

--     select
--         status as value_field,
--         count(*) as n_records

--     from `irn-73707-tra-ff`.`dbt_setup_a054975`.`stg_jaffleshop_orders`
--     group by status

-- )

-- select *
-- from all_values
-- where value_field not in (
--     'placed','shipped','completed','returned'
-- )

with child as (
    select customer_id as from_field
    from `irn-73707-tra-ff`.`dbt_setup_a054975`.`stg_jaffleshop_orders`
    where customer_id is not null
),

parent as (
    select customer_id as to_field
    from `irn-73707-tra-ff`.`dbt_setup_a054975`.`stg_jaffleshop_customers`
)

select
    from_field,
    to_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null