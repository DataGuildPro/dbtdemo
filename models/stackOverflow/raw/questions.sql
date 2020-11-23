SELECT id
, answer_count
, comment_count
, creation_date
, favorite_count
, tags
, view_count
from {{ source('stackoverflow', 'questions') }}
