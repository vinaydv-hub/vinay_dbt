{{ config(materialized='table',transient='false') }}

with tb1 as (
    select 
    * 
    from {{ ref('stg_change_owner')}}
),
tb2 as(
    select 
    * 
    from {{ref('STG_RSA_MOBILE_APP')}}
),
select * from tb1
union all
select * from tb2;