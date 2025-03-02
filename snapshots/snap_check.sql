{% snapshot snap_check %}
{{ 
    config(
        strategy='check',
        target_schema='snap',
        unique_key='id',
        check_cols='all'
    )
}}
select *
from {{source('datafeed_shared_schema','stg_klc')}}
{% endsnapshot %}