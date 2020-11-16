{{
    config(
        materialized='incremental',
        unique_key ='id'
    )
}}

select id , title, answer_count, comment_count, creation_date, favorite_count, last_activity_date, score, tags, view_count 
from stackoverflow.posts_answers

{% if is_incremental() %}

  -- this filter will only be applied on an incremental run
  where last_activity_date >= (select max(last_activity_date) from {{ this }})

{% endif %}
 