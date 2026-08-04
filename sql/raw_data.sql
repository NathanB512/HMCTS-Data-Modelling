INSERT INTO dim_court
(court_key, court_name, region, court_type)
VALUES
(1, 'Central London Crown Court', 'London', 'Crown'),
(2, 'Manchester Crown Court', 'North West', 'Crown'),
(3, 'Birmingham Family Court', 'West Midlands', 'Family'),
(4, 'Leeds Tribunal Centre', 'Yorkshire', 'Tribunal'),
(5, 'Bristol Civil Justice Centre', 'South West', 'Civil');

INSERT INTO dim_case_type
(case_type_key, case_type)
VALUES
(1, 'Criminal'),
(2, 'Civil'),
(3, 'Family'),
(4, 'Tribunal');

INSERT INTO dim_date
(date_key, full_date, month, year)
VALUES
(20260105, '2026-01-05', 'January', 2026),
(20260120, '2026-01-20', 'January', 2026),
(20260210, '2026-02-10', 'February', 2026),
(20260315, '2026-03-15', 'March', 2026),
(20260405, '2026-04-05', 'April', 2026),
(20260512, '2026-05-12', 'May', 2026),
(20260618, '2026-06-18', 'June', 2026);

INSERT INTO fact_hearing
(hearing_id, court_key, case_type_key, date_key, duration_minutes, waiting_days, adjourned_flag)
VALUES
(1001, 1, 1, 20260105, 120, 75, 1),
(1002, 1, 1, 20260120, 90, 60, 0),
(1003, 2, 1, 20260210, 150, 85, 1),
(1004, 2, 2, 20260315, 60, 40, 0),
(1005, 3, 3, 20260405, 75, 25, 0),
(1006, 3, 3, 20260512, 90, 30, 0),
(1007, 4, 4, 20260618, 50, 65, 1),
(1008, 5, 2, 20260105, 80, 45, 0),
(1009, 5, 2, 20260210, 70, 55, 0),
(1010, 1, 1, 20260315, 180, 95, 1);