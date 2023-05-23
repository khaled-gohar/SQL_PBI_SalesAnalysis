-- Cleansed Customers Table --
SELECT 
  customerkey, 
  firstname AS "First Name" , 
  lastname AS "Last Name", 
  firstname || ' ' || lastname AS "Full Name", -- Combined First and Last Name
  --gender ,
  Case when gender = 'M' THEN 'Male' ELSE 'Female' END AS "Gendar", 
  datefirstpurchase AS "DateFirstPurchase", 
  RIGHT(datefirstpurchase, 4) AS "Year", 
  customercity AS "Customer City"
FROM 
  customers c 
WHERE 
  RIGHT(datefirstpurchase, 4) >= '2019' 
ORDER BY 
  1     -- Ordered List by CustomerKey
