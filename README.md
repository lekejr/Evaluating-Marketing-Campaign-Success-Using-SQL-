# Evaluating Marketing Campaign Success Using SQL Queries

## Introduction

Effective marketing requires data-driven decision-making to identify which campaigns perform best. The primary objectives of this report are to use SQL to analyze a marketing campaign dataset, focusing on key metrics such as impressions, ROI, CTR, engagement scores and cost-effectiveness to assess campaign performance. The analysis helps businesses optimize budgets, refine targeting strategies and improve overall marketing effectiveness. By importing, cleaning and querying the dataset, valuable insights are extracted to guide smarter marketing decisions. 

## Objectives

The primary objective of this analysis is to evaluate the performance of marketing campaigns based on key metrics such as impressions, ROI, engagement, CTR and cost-effectiveness. The specific queries and expected outputs are as follows:

1. Calculate Total Impressions for Each Campaign  
   Output: A table with campaign_id and total_impressions.

2. Identify the Campaign with the Highest ROI  
   Output: A single row with campaign_id, company, and roi.

3. Find the Top 3 Locations with the Most Impressions  
   Output: A table with location and total_impressions.

4. Calculate Average Engagement Score by Target Audience  
   Output: A table with target_audience and avg_engagement_score.

5. Calculate the Overall CTR (Click-Through Rate)  
   Output: A single value for the overall overall_ctr.

6. Find the Most Cost-Effective Campaign  
   Output: A table with campaign_id, company, and cost_per_conversion.

7. Find Campaigns with CTR Above a Threshold  
   Output: A table with campaign_id, company, and ctr.

8. Rank Channels by Total Conversions  
   Output: A table with channel_used and total_conversions.

## Dataset Overview

The dataset contains 200,005 entries with fields such as campaign ID, company name, campaign type, target audience, duration, channel used, conversion rate, acquisition cost, ROI, location, date, clicks, impressions, engagement score and customer segment.

## Methodology

### Creating database

A database was created and within it, a table was created named "campaigndata" was established using this SQL syntax.
![image](https://github.com/user-attachments/assets/8646fee4-ae62-40c8-9bd0-bc1e1e397012)

### Data Preparation

The dataset saved in a CSV format was imported into pgAdmin 4 using the “Import/Export Data” tool.
![image](https://github.com/user-attachments/assets/1010afbd-f7ce-4b47-aecc-479860fc9c3d)

### Checking our data structure

The dataset was reviewed for inconsistencies and data types. The total number of rows and columns was counted, confirming 200,005 rows and 15 columns.
![image](https://github.com/user-attachments/assets/f2bb60c1-3ebc-4ecb-b7a5-0f927f013a95)

## Queries and Findings

Various SQL queries were executed to extract insights, focusing on campaign performance metrics.

### Calculate Total Impressions for Each Campaign

The query below was used to calculate the total impressions for each campaign by summing up the impressions across all records associated with the same Campaign_ID and renamed the sum column as Total_Impression. It is essential for understanding the reach of each marketing campaign. By calculating total impressions, we can evaluate campaign visibility and compare the effectiveness of different campaigns in capturing audience attention.

**Query:**  
![image](https://github.com/user-attachments/assets/17ff7e94-5e28-410c-9281-def1cf707d95)


**Result:**  
![image](https://github.com/user-attachments/assets/106f1e85-740c-45fd-997a-7f22c7282dda)


### Identify the Campaign with the Highest ROI

We used the query to identify the campaign with the highest Return on Investment (ROI) by sorting all campaigns in descending order based on ROI and selecting only the top one. It helps identify the most successful campaign based on ROI.

**Query:**  
![image](https://github.com/user-attachments/assets/b14271e9-6809-4257-a170-41c5743f19e0)


**Output:**  
![image](https://github.com/user-attachments/assets/be05395c-c872-4911-817e-f5b77ea23261)


### Find the Top 3 Locations with the Most Impressions

We used the query to identify the top 3 locations with the highest number of ad impressions helping in understanding where campaigns performed best.

**Query:**  
![image](https://github.com/user-attachments/assets/6f96f7d3-2a0b-49b8-ae81-00c1eb3366c3)


**Output:**  
![image](https://github.com/user-attachments/assets/e1b7182c-ba6c-4a1c-bef8-c212aacd6bc6)


### Calculate Average Engagement Score by Target Audience

We used this syntax to calculate the average engagement score for each target audience. To improve campaign performance, marketing efforts should be adjusted based on audience engagement trends.

**Query:**  
![image](https://github.com/user-attachments/assets/a96773cf-41eb-402f-a837-4ca652649fed)


**Output:**  
![image](https://github.com/user-attachments/assets/188b73b5-3994-4bdf-9548-48ff8610e0ad)


### Calculate the Overall CTR (Click-Through Rate)

This query calculates the Overall Click-Through Rate (CTR) for all marketing campaigns and this CTR metric helps in evaluating campaign performance and optimizing ad strategies to increase engagement and conversions.

**Query:**  
![image](https://github.com/user-attachments/assets/20471e58-fd79-4d86-9332-ad7d81ce3ef3)


**Output:**  
![image](https://github.com/user-attachments/assets/c85de49c-736e-4f19-9f5a-41831dc3c550)


### Find the Most Cost-Effective Campaign

Identify the most cost-effective campaign by calculating the cost per conversion and selecting the campaign with the lowest value. Future campaigns should analyze cost effectiveness and focus on strategies that improve conversion rates while keeping acquisition costs low.

**Query and Output:**  
![image](https://github.com/user-attachments/assets/30c03372-72a2-44a3-8f3a-5f9f713c8977)


### Find Campaigns with CTR Above a Threshold

This query retrieves campaigns that have a Click-Through Rate (CTR) higher than 5% and it helps to optimize marketing efforts, focusing on successful campaigns while improving weaker ones.

**Query and Output:**  
![image](https://github.com/user-attachments/assets/d463fe94-42b8-4752-a924-f6ed8ea417d4)


### Rank Channels by Total Conversions

This query analyzes campaign performance by marketing channel and identifies which channel generated the highest total conversions. The marketing budget and resources should be allocated more towards social media and Google Ads, while email and TV ads may need optimization.

**Query and Output:**  
![image](https://github.com/user-attachments/assets/dbe8a59a-853c-461a-839e-923269895b68)


## Key Insights

- **Top Performing Campaign:**  
  - Campaigns 43755, 60573, 26806 are the 3 top performing campaigns making them the most successful in terms of profitability.

- **Top Locations by Impressions:**  
  - New York (221,359,756), Miami (221,347,726), and Chicago (219,999,352) generated the highest impressions, indicating these locations are key markets for future campaigns.

- **Engagement by Audience:**  
   - The target audience "Men 18-24 Years" had the highest average engagement score of 5.51, suggesting this audience is highly responsive to the campaigns.

- **Cost-Effectiveness:**  
    - Campaign 118451 by Alpha Innovation Company was the most cost-effective, with a cost per conversion of $33,346.66, making it a model for budget optimization.

- **Channel Performance:**  
   - Email drove the most conversions (2697.38), highlighting its effectiveness in reaching and engaging the target audience.

- **CTR Performance:**  
   - The overall CTR across all campaigns was 9.98%, indicating an average engagement level from the audience.

## Recommendations

- **Increase Budget for High-Performing Channels:** Social media and Google Ads yielded the highest conversions, indicating that allocating more resources to these channels could further boost ROI.
- **Optimize Campaigns with High Impressions but Low Conversions:** Analyze these for better targeting and message optimization.
- **Enhance Engagement Strategies:** Refine ad creatives, personalization, and interactive content to increase interaction.
- **Focus on Cost-Effective Campaigns:** Use them as benchmarks for future marketing efforts.
- **Improve Underperforming Channels:** Adjustments such as A/B testing and better segmentation may help Email and TV ads.

## Conclusion

The analysis provided valuable insights into campaign effectiveness by examining impressions, ROI, CTR and engagement scores.

- Social media and Google Ads were the top-performing channels.
- Some campaigns had high impressions but low conversions.
- Focusing on lower cost per conversion can improve efficiency.
By implementing the recommended strategies, businesses can refine their marketing approach, maximize returns and improve engagement with their target audience.

## Next Steps

- **Conduct Deeper Analysis:** Use segmentation and A/B testing.
- **Refine Targeting Strategies:** Adjust audience parameters and use retargeting.
- **Monitor Performance Continuously:** Use dashboards and real-time KPI tracking.
- **Test Alternative Channels:** Compare emerging with traditional ones.
- **Enhance Data-Driven Decision-Making:** Implement machine learning models to predict campaign performance and optimize ad spend.
