{{ config(marerialized='table') }}

with tb1 as (
SELECT 
* 
FROM {{ SOURCE('database_schema_info','CHANGE_OWNER') }})
select * from tb1