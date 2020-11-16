{{
    config(
        materialized='incremental'
    )
}}


select * from `bigquery-public-data.stackoverflow.posts_answers`
where 