with source as (
  select * from {{ source('olist', 'olist_category_name_translation') }}
),

renamed as (
  select
    category_name as category_name_portuguese,
    category_name_english as category_name
  from source
)

select *
from renamed