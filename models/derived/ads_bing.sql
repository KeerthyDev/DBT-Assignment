with bing as (select * from {{ ref('src_ads_bing_all_data')}})

select 
ad_id                            as ad_id,
null                             as add_to_cart,
adset_id                         as adset_id,
campaign_id                      as campaign_id,
channel                          as channel,
clicks                           as clicks,
null                             as comments,
null                             as creative_id,
date                             as date,
null                             as engagements,
imps                             as impressions,
null                             as installs,
null                             as likes,
null                             as link_clicks,
null                             as placement_id,
null                             as post_click_conversions,
null                             as post_view_conversions,
null                             as posts,
null                             as purchase,
null                             as registrations,
revenue                          as revenue,
null                             as shares,
spend                            as spend,
conv                             as total_conversions,
null                             as video_views
from bing