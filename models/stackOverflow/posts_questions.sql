
-- {{ config(materialized='table') }}

with questions as (
select  q.id as question_id,q.title, q.accepted_answer_id, q.answer_count, q.creation_date , split(q.tags,'|') as tag 
from `bigquery-public-data.stackoverflow.posts_questions` q 
)

select * except (tag)
from questions q join UNNEST (tag) as question_tag
