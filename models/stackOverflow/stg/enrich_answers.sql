{{
    config(
        materialized='ephemeral'
    )
}}

select
a.id
, a.creation_date
, a.parent_id
, count(case when v.vote_type_id=2 then 1 end) as votes_up
, max(case when v.vote_type_id=1 then 1 else 0 end) as accepted_answer
FROM {{ref('answers')}} a
left join {{ref('votes')}} v on a.id=v.post_id and v.vote_type_id in (2,1)
group by 1,2,3