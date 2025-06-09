SELECT 
  campaign_id, 
  company, 
  (REGEXP_REPLACE(acquisition_cost, '[\$,]', '', 'g')::NUMERIC / conversion_rate) AS costperconversion
FROM campaigndata
GROUP BY campaign_id, company, acquisition_cost, conversion_rate
ORDER BY costperconversion ASC 
LIMIT 1;



