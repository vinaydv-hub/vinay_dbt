{% snapshot stg_klc %}
{{ config(strategy='timestamp',
    unique_id='id',
    updated_at='src_date'
)
}}
select 
    * 
        from {{source('datafeed_shared_schema','STG_KLC')}}
{ %endsnapshot% }   
