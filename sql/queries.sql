-- Question:
-- Which courts have the highest average waiting times?

SELECT
    c.court_name,
    ROUND(AVG(f.waiting_days), 1) AS average_waiting_days
FROM fact_hearing f
JOIN dim_court c
    ON f.court_key = c.court_key
GROUP BY c.court_name
ORDER BY average_waiting_days DESC;

-- Question:
-- How many hearings are there by case type?

SELECT
    ct.case_type,
    COUNT(*) AS number_of_hearings
FROM fact_hearing f
JOIN dim_case_type ct
    ON f.case_type_key = ct.case_type_key
GROUP BY ct.case_type
ORDER BY number_of_hearings DESC;

-- Question:
-- Which courts have the highest proportion of adjourned hearings?

SELECT
    c.court_name,
    ROUND(AVG(f.adjourned_flag) * 100, 1) AS adjournment_rate_percentage
FROM fact_hearing f
JOIN dim_court c
    ON f.court_key = c.court_key
GROUP BY c.court_name
ORDER BY adjournment_rate_percentage DESC;

