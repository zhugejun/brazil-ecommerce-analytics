with source as (
  select * from {{ source('olist', 'olist_category_name_translation') }}
),

renamed as (
  select
    product_category_name as product_category_name_portuguese,
    product_category_name_english as product_category_name
  from source
)

select *
from renamed