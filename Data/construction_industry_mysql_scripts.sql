DROP TABLE IF EXISTS bygoms2_turnover;

CREATE TABLE bygoms2_turnover (
  Industry_code VARCHAR(20) NOT NULL,
  Industry_name VARCHAR(120) NOT NULL,
  Work_type VARCHAR(150) NOT NULL,
  Year INT NOT NULL,
  Turnover_mDKK DECIMAL(15,2) NOT NULL,
  PRIMARY KEY (Industry_code, Work_type, Year)
);

-- Query 1 — Total turnover by year
SELECT Year, SUM(Turnover_mDKK) AS Total_Turnover_mDKK
FROM bygoms2_turnover
GROUP BY Year
ORDER BY Year;

-- Query 2 — Industry ranking in 2024
SELECT Industry_code, Industry_name,
       SUM(Turnover_mDKK) AS Total_Turnover_2024
FROM bygoms2_turnover
WHERE Year = 2024
GROUP BY Industry_code, Industry_name
ORDER BY Total_Turnover_2024 DESC;

-- Query 3 — Work type composition in 2024 (% share)
SELECT Work_type,
       SUM(Turnover_mDKK) AS Total_Turnover_2024,
       ROUND(SUM(Turnover_mDKK) * 100.0 /
             (SELECT SUM(Turnover_mDKK) FROM bygoms2_turnover WHERE Year = 2024), 2)
       AS Percentage_Share
FROM bygoms2_turnover
WHERE Year = 2024
GROUP BY Work_type
ORDER BY Total_Turnover_2024 DESC;

-- Query 4: Housing vs Other within “New buildings and extensions” (trend). This will show how much turnover comes from housing vs other segments across all years.
SELECT 
    Year,
    ROUND(SUM(CASE WHEN Work_type = 'New buildings and extensions_housing' 
        THEN Turnover_mDKK ELSE 0 END), 0) AS Housing,
    ROUND(SUM(CASE WHEN Work_type = 'New buildings and extensions_other' 
        THEN Turnover_mDKK ELSE 0 END), 0) AS Other
FROM bygoms2_turnover
GROUP BY Year
ORDER BY Year;

-- Query 5 — Repair vs New Construction mix (trend). This looks at the overall mix of new construction vs repair/maintenance vs civil engineering vs other across all years. This will show how the industry balance shifts over time.

SELECT
    Year,
    ROUND(SUM(CASE WHEN Work_type LIKE 'New buildings and extensions%' 
             THEN Turnover_mDKK ELSE 0 END), 0) AS NewBuilds,
    ROUND(SUM(CASE WHEN Work_type LIKE 'Repair and maintenance%' 
             THEN Turnover_mDKK ELSE 0 END), 0) AS RepairMaintenance,
    ROUND(SUM(CASE WHEN Work_type LIKE 'Civil engineering%' 
             THEN Turnover_mDKK ELSE 0 END), 0) AS CivilEngineering,
    ROUND(SUM(CASE WHEN Work_type = 'Other occupation' 
             THEN Turnover_mDKK ELSE 0 END), 0) AS Other
FROM bygoms2_turnover
GROUP BY Year
ORDER BY Year;
