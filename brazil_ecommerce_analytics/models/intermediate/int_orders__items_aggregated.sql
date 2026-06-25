with order_items as (
  select * from {{ ref('stg_olist__order_items') }}
)

select 
  order_id,
  count(distinct order_item_id) as num_items,
  sum(price) as total_price,
  count(distinct seller_id) as num_sellers,
  count(distinct product_id) as num_products,
  sum(freight_value) as total_freight_value
from order_items
group by order_id

