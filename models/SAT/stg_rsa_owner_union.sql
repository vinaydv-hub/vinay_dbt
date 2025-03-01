{{ config(materialized='table',transient='false') }}

with tb1 as (
    select 
    ODOMETER_READING,ODOMETER_READING AS VV
    from {{ ref('stg_change_owner')}}
),
tb2 as(
    select 
    CLIENT_CD,CASE_NUMBER
    from {{ref('STG_RSA_MOBILE_APP')}}
)
select * from tb1
union all
select * from tb2