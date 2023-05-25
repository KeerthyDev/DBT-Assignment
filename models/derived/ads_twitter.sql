with twitter as (select * from {{ ref('src_promoted_tweets_twitter_all_data')}})

select 
null                           as ad_id,
null                           as add_to_cart,
null                           as adset_id,
campaign_id                    as campaign_id,
channel                        as channel,
clicks                         as clicks,
comments                       as comments,
null                           as creative_id,
date                           as date,
engagements                    as engagements,
impressions                    as impressions,
null                           as installs,
likes                          as likes,
null                           as link_clicks,
null                           as placement_id,
null                           as post_click_conversions,
null                           as post_view_conversions,
null                           as posts,
null                           as purchase,
null                           as registrations,
null                           as revenue,
retweets                       as shares,
spend                          as spend,
null                           as total_conversions,
video_total_views              as video_views
from twitter