select q.id, answer_count, count(distinct a.id) as answer_count2
from {{ref('questions')}} q
left join {{ref('answers')}} a on q.id=a.parent_id
group by 1,2
having answer_count<>count(distinct a.id)