# Elite Rally Badminton Club Pricing Analysis

## Overview
This project analyzes whether a weekday non-peak pricing strategy increased afternoon attendance at Elite Rally Badminton Club.

The club originally used a flat ticket price across operating hours. After observing lower weekday traffic during 12:00–18:00, the club introduced a lower weekday non-peak price for that period while keeping post-18:00 pricing unchanged.

This project evaluates whether the pricing change increased attendance and how it affected revenue.

## Business Problem
Elite Rally Badminton Club originally charged the same ticket price across weekday operating hours. However, weekday traffic between 12:00 and 18:00 appeared lower than traffic after 18:00.

To improve utilization during non-peak hours, the club reduced the weekday ticket price for 12:00–18:00 from **$15 to $13**, while keeping the post-18:00 price at **$15**.

This project answers three questions:

1. Before the pricing change, were weekday afternoon hours truly non-peak?
2. Did attendance increase after the weekday non-peak price reduction?
3. How did the pricing change affect revenue?

## Dataset
This project uses a synthetic dataset inspired by a real badminton club pricing scenario.

Dataset characteristics:
- Weekday only
- No weekday morning operation
- Time slots from 12:00 to 23:00
- Includes attendance, ticket price, revenue, and pricing phase
- Pricing change date: 2025-11-01

## Tools
- SQL
- Python
- pandas
- seaborn
- matplotlib
- Jupyter Notebook

## Project Structure
```text
elite-rally-pricing-analysis/
├── data/
│   └── elite_rally_pricing_project_data_weekday_only.csv
├── notebooks/
│   └── pricing_analysis.ipynb
├── sql/
│   └── pricing_analysis.sql
└── README.md
```

### Key Questions
1. Were weekday afternoon hours truly non-peak before the pricing change?

The analysis compares average attendance in 12:00–18:00 versus 18:00–23:00 before the pricing change.

2. Did attendance increase after the non-peak price reduction?

The analysis compares weekday afternoon attendance before and after the price reduction.

3. How did the pricing change affect revenue?

The analysis evaluates both overall revenue and afternoon revenue before and after the change.

### Key Findings

Before the pricing change, weekday attendance during 12:00–18:00 was lower than attendance during 18:00–23:00, confirming that afternoon hours were non-peak.

After reducing the weekday 12:00–18:00 price, afternoon attendance increased noticeably.

In this synthetic scenario, the increase in attendance was strong enough to improve both non-peak utilization and revenue performance.

### Business Recommendation

The results suggest that lower weekday non-peak pricing can be an effective strategy for increasing traffic during underused afternoon hours.

This pricing structure may help create a more balanced demand pattern across the day while improving utilization and supporting revenue growth.
