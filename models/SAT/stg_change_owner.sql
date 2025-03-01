{{ config(materialized='table') }}

WITH tb1 as(
    select
   ODOMETER_READING,
   ODOMETER_READING
    from {{source('datafeed_shared_schema','CHANGE_OWNER')}})
select * from tb1