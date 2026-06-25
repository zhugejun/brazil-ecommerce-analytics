with orders as (
  select * from {{ ref('stg_olist__orders') }}
)

select 
  order_id,
  purchased_at::DATE as purchased_date,
  delivered_customer_at::DATE as delivered_date,
  approved_at::DATE - purchased_at::DATE as approval_time_days,
  delivered_carrier_at::DATE - purchased_at::DATE as carrier_time_days,
  delivered_customer_at::DATE - delivered_carrier_at::DATE as delivery_carrier_time_days,
  delivered_customer_at::DATE - purchased_at::DATE as delivery_time_days,
  estimated_delivery_at::DATE - purchased_at::DATE as estimated_delivery_time_days,
  delivered_customer_at::date - estimated_delivery_at::date as delay_days
from orders