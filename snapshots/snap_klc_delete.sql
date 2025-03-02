{% snapshot snap_klc_delete%}
{{
    config(
        strategy='timestamp',
        target_schema='snap',
        unique_key='id',
        updated_at='src_date',
        invalidate_hard_deletes=True
    )
}}
select * 
from {{source('datafeed_shared_schema','stg_klc')}}
{% endsnapshot%}