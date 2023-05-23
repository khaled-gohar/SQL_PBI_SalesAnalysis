-- Cleansed Date Table --
SELECT 
  datekey, 
  CAST(fulldatealternatekey AS DATE) as "Date", 
  RIGHT(fulldatealternatekey, 4) AS "Year", 
  "Day", 
  monthname AS "Month Name",
  LEFT(monthname, 3) AS "Month", -- Useful for front end date navigation and front end graphs.
  monthnumberofyear AS "MonthNr", 
  calenderquarter AS "Quarter" 
FROM 
  calendar c 
WHERE 
  RIGHT(fulldatealternatekey, 4) >= '2019' 
ORDER BY 
  3     -- Ordered List by Year
