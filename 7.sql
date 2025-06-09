SELECT Campaign_ID, 
Company, 
(Clicks * 1.0 / Impressions) AS CTR

FROM campaigndata

WHERE (Clicks * 1.0 / Impressions) > 0.05;
