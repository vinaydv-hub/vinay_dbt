{% snapshot snap_klc %}
{{
    config(
        strategy='timestamp',
        target_schema='snap',
        unique_key='id',
        updated_at='src_date'
    )
}}
select * 
from {{source('datafeed_shared_schema','stg_klc')}}
{% endsnapshot %}