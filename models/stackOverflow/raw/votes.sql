{{
    config(
        materialized='incremental',
        unique_key ='id'
    )
}}

select
id,
post_id,
vote_type_id
from {{ source('stackoverflow', 'votes') }}