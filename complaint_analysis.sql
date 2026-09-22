-- Consumer Complaint Baseline & QA Analysis
-- Author: Amoy Anderson
-- Engine: MySQL 8.0

WITH company_totals AS (
SELECT
company,
COUNT(*) AS total_complaints,
SUM(CASE WHEN `Timely response?` = 'No' THEN 1 ELSE 0 END) AS late_responses
FROM complaints
GROUP BY company
HAVING total_complaints >= 500
)
SELECT
company,
total_complaints,
late_responses,
ROUND((late_responses * 100.0 / total_complaints), 2) AS company_late_pct,
ROUND(
(SUM(late_responses) OVER() * 100.0) / SUM(total_complaints) OVER(),
2
) AS overall_avg_pct
FROM company_totals
ORDER BY company_late_pct DESC;
