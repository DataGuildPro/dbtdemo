
select tag, case when  sum(answer_count) =0 then 0 else  count(distinct accepted_answer_id)/ sum(answer_count) end as approval_rate
from {{ ref('posts_questions') }}
group by 1
