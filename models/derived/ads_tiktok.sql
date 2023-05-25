with tiktok as (select * from {{ ref('src_ads_tiktok_ads_all_data')}})

select 
ad_id                                  as ad_id,
add_to_cart                            as add_to_cart,
adgroup_id                             as adset_id,
campaign_id                            as campaign_id,
channel                                as channel,
clicks                                 as clicks,
null                                   as comments,
null                                   as creative_id,
date                                   as date,
null                                   as engagements,
impressions                            as impressions,
coalesce(rt_installs,skan_app_install) as installs,
null                                   as likes,
null                                   as link_clicks,
null                                   as placement_id,
null                                   as post_click_conversions,
null                                   as post_view_conversions,
null                                   as posts,
purchase                               as purchase,
registrations                          as registrations,
null                                   as revenue,
null                                   as shares,
spend                                  as spend,
ifnull(conversions,0) 
+ifnull(skan_conversion,0)             as total_conversions,
video_views                            as video_views
from tiktok