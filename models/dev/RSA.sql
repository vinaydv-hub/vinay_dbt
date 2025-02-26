{{ config(materialized='table') }}

WITH STG_RSA_MOBILE_APP as(
    select
   *
    from {{source('datafeed_shared_schema','STG_RSA_MOBILE_APP')}})
select * from STG_RSA_MOBILE_APP
