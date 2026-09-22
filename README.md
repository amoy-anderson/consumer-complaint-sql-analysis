# Consumer Complaint Baseline & QA Analysis

## Executive Summary
This project analyzes financial consumer complaint data in MySQL to evaluate institutional response efficiency, detect operational anomalies, and benchmark individual company performance against market baselines.

## Key Technical Concepts
* **Window Functions (`OVER()`):** Calculated single-pass dynamic market baselines across filtered subsets.
* **Common Table Expressions (CTEs):** Structured multi-stage data transformations for performance and readability.
* **Conditional Aggregation (`SUM(CASE WHEN...)`):** Isolated untimely responses dynamically.
* **QA/QC Data Integrity:** Executed baseline integrity checks and precision-aware division to ensure accurate reporting outputs.

## Dataset & Filters
* **Database Engine:** MySQL 8.0
* **Data Selection:** Filtered for institutions with 500+ total complaints to analyze statistically significant market drivers.
