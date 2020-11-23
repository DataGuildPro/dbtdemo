select
q.*
, a.id as answer_id
, a.creation_date as answer_creation_date
, a.votes_up as answer_votes_up
, coalesce(a.accepted_answer,0) as is_accepted_answer
from {{ref('questions')}} q
left join {{ref('enrich_answers')}} a on q.id=a.parent_id