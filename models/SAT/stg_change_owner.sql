WITH tb1 as(
    select
   *
    from {{source('datafeed_shared_schema','CHANGE_OWNER')}})
select * from tb1