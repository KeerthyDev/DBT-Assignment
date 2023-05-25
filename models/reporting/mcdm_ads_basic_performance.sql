with 
bing           as (select * from {{ ref('ads_bing') }}),
facebook       as (select * from {{ ref('ads_facebook') }}),
tiktok         as (select * from {{ ref('ads_tiktok') }}),
twitter        as (select * from {{ ref('ads_twitter') }})

select * from bing
union all 
select * from facebook
union all 
select * from tiktok
union all 
select * from twitter
