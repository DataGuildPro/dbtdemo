select
id
, creation_date
, parent_id
from {{ source('stackoverflow', 'answers') }}

