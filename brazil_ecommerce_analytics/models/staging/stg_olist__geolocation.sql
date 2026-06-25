with source as (
  select * from {{ source ('olist', 'olist_geolocation_dataset') }}
),

renamed as (
  select
    geolocation_zip_code_prefix as zip_code_prefix,
    geolocation_lat as lat,
    geolocation_lng as long,
    geolocation_city as city,
    geolocation_state as state
  from source
)

select *
from renamed