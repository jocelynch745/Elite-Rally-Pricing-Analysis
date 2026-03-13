-- Question 1
-- Before the pricing change, were weekday afternoon hours truly non-peak?

SELECT
   CASE
        WHEN time_slot IN ('12:00-15:00', '15:00-18:00') THEN '12:00-18:00'
        WHEN time_slot IN ('18:00-21:00', '21:00-23:00') THEN '18:00-23:00'
    END AS period_group,
  ROUND(AVG(attendance_count), 2) AS avg_attendance
FROM `project-33891622-1fbb-47bb-9d2.badminton_analysis.court_usage_weekday`
WHERE price_policy_phase = 'before_change'
GROUP BY period_group;

-- Question 2
-- Did attendance increase after the weekday non-peak price reduction?

SELECT
  price_policy_phase,
  ROUND(AVG(attendance_count), 2) AS avg_attendance,
  SUM(attendance_count) AS total_attendance,
  COUNT(*) AS num_records
FROM `project-33891622-1fbb-47bb-9d2.badminton_analysis.court_usage_weekday`
WHERE time_slot IN ('12:00-15:00', '15:00-18:00')
GROUP BY price_policy_phase
ORDER BY price_policy_phase;

-- Question 2
-- Daily Trend

SELECT
  date,
  price_policy_phase,
  SUM(attendance_count) AS afternoon_attendance
FROM `project-33891622-1fbb-47bb-9d2.badminton_analysis.court_usage_weekday`
WHERE time_slot IN ('12:00-15:00', '15:00-18:00')
GROUP BY date, price_policy_phase
ORDER BY date;

-- Question 3
-- How did the pricing change affect revenue?

SELECT
  price_policy_phase,
  ROUND(AVG(revenue_usd), 2) AS avg_revenue,
  ROUND(SUM(revenue_usd), 2) AS total_revenue
FROM `project-33891622-1fbb-47bb-9d2.badminton_analysis.court_usage_weekday`
GROUP BY price_policy_phase
ORDER BY price_policy_phase;

-- Question 3
-- Afternoon Revenue

SELECT
  price_policy_phase,
  ROUND(AVG(revenue_usd), 2) AS avg_revenue,
  ROUND(SUM(revenue_usd), 2) AS total_revenue
FROM `project-33891622-1fbb-47bb-9d2.badminton_analysis.court_usage_weekday`
WHERE time_slot IN ('12:00-15:00', '15:00-18:00')
GROUP BY price_policy_phase
ORDER BY price_policy_phase;