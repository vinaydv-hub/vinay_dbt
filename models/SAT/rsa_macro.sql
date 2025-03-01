{{ config(materialized='table')}}
select CLIENT_CD,CASE_NUMBER,
{{rsa_add_macro('CASE_NUMBER')}} as new_col
from {{source('datafeed_shared_schema','STG_RSA_MOBILE_APP')}}