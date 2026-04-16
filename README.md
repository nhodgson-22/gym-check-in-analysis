# Gym Check-In Analysis

## Overview
This project analyzes gym check-in data to identify peak usage hours and weekly traffic patterns.

## Business Question
When is the gym busiest, and how can check-in trends inform staffing and operational planning?

## Tools Used
- SQL (BigQuery)
- Tableau Public

## Dataset
The dataset includes anonymized member check-in activity over the last 12 months, using:
- member ID
- check-in date
- check-in time

For privacy and professionalism, member IDs were replaced with anonymized values and raw source data is not included in this repository.

## Project Workflow
1. Combined separate date and time fields into a single check-in timestamp
2. Anonymized member IDs
3. Extracted hour of day and day of week from each check-in
4. Analyzed traffic patterns across time of day and weekday
5. Built Tableau visuals to highlight peak usage trends

## SQL Files
- `sql/01_prepare_checkin_data.sql` – prepares the cleaned analytical dataset
- `sql/02_checkins_by_hour.sql` – summarizes check-ins by hour of day
- `sql/03_checkins_by_day.sql` – summarizes check-ins by day of week
- `sql/04_checkin_heatmap.sql` – prepares hour-by-day traffic analysis

## Visuals

### Check-Ins by Hour of Day
This chart shows how check-in volume changes throughout the day and highlights peak usage hours.

![Check-Ins by Hour of Day](visuals/checkins_by_hour.png)

### Check-Ins by Day of Week
This chart compares check-in volume across weekdays to identify the busiest days.

![Check-Ins by Day of Week](visuals/checkins_by_day.png)

### Check-In Heatmap
This heatmap shows the concentration of check-ins by both hour of day and day of week, helping identify the busiest periods for operational planning.

![Check-In Heatmap](visuals/checkin_heatmap.png)

## Key Insights
- Check-in activity showed clear peak hours during the day
- Traffic patterns varied by weekday
- The busiest periods can help inform staffing and front desk coverage decisions
