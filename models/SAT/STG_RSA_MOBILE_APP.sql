{{ config(materialized='table') }}

with tb1 as (
    select 
    CLIENT_CD,CASE_NUMBER
    from {{ source('datafeed_shared_schema','STG_RSA_MOBILE_APP')}}
)
select * from tb1