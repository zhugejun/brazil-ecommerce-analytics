with source as (
  select * from {{ source('olist', 'olist_order_payments_dataset') }}
),

renamed as (
  select
    order_id,
    payment_sequential as sequential,
    payment_type as type,
    payment_installments as installments,
    payment_value as value
  from source
)

select *
from renamed