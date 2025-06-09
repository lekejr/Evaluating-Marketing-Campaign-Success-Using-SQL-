SELECT (sum(clicks :: Numeric)/ nullif(sum(impressions), 0)) * 100
as overallctr
from campaigndata;
