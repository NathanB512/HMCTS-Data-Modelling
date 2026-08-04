CREATE TABLE dim_court (
    court_key INTEGER PRIMARY KEY,
    court_name TEXT,
    region TEXT,
    court_type TEXT
);


CREATE TABLE dim_case_type (
    case_type_key INTEGER PRIMARY KEY,
    case_type TEXT
);


CREATE TABLE dim_date (
    date_key INTEGER PRIMARY KEY,
    full_date TEXT,
    month TEXT,
    year INTEGER
);


CREATE TABLE fact_hearing (
    hearing_id INTEGER PRIMARY KEY,
    court_key INTEGER,
    case_type_key INTEGER,
    date_key INTEGER,
    duration_minutes INTEGER,
    waiting_days INTEGER,
    adjourned_flag INTEGER
);