-- Cleansed InternetSales Table --
SELECT 
  productkey , 
  orderdatekey:: text as "OrderDateKey", 
  duedatekey:: text as "DueDateKey", 
  shipdatekey:: text as "ShipDateKey", 
  customerkey , 
  salesordernumber AS "SalesOrderNumber", 
  salesamount AS "Sales Amount"
FROM 
  internetsales fi 
WHERE 
  LEFT(CAST(orderdatekey AS text), 4) >= '2019' 
ORDER BY 
  2     -- Ordered List by OrderDateKey