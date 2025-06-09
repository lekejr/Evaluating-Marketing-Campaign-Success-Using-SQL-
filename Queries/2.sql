SELECT 
    campaign_id, 
    company, 
   ROI
FROM 
    campaigndata
ORDER BY 
    ROI DESC
LIMIT 1;
