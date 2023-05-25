with facebook as (select * from {{ ref('src_ads_creative_facebook_all_data')}})

select 
ad_id                                    as ad_id,
add_to_cart                              as add_to_cart,
adset_id                                 as adset_id,
campaign_id                              as campaign_id,
channel                                  as channel,
coalesce(clicks,clicks_2)                as clicks,
coalesce(comments,comments_2)            as comments,
creative_id                              as creative_id,
date                                     as date,
ifnull(views,0) 
+ ifnull(comments,0) 
+ifnull(shares,0) 
+ifnull(likes,0)  
+ifnull(clicks,0)                        as engagements,
impressions                              as impressions,
mobile_app_install                       as installs,
likes                                    as likes,
inline_link_clicks                       as link_clicks,
null                                     as placement_id,
null                                     as post_click_conversions,
null                                     as post_view_conversions,
null                                     as posts,
purchase                                 as purchase,
null                                     as registrations,
null                                     as revenue,
coalesce(shares,shares_2)                as shares,
spend                                    as spend,
coalesce(purchase,purchase_2)            as total_conversions,
null                                     as video_views
from facebook