-- tests/assert_price_is_positive.sql

select *
from {{ ref('stg_olist__order_items') }}
where price <= 0 or price is null