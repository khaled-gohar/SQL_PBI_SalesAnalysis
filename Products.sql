-- Cleansed Products Table --
SELECT 
  productkey , 
  productitemcode AS "Product Item Code", 
  ProductName AS "Product Name", 
  CASE WHEN SubCategory IS NULL THEN 'Not Registered' ELSE SubCategory END AS "Sub Category", 
  CASE WHEN ProductCategory IS NULL THEN 'Not Registered' ELSE ProductCategory END AS "Product Category", 
  CASE WHEN ProductColor = 'NA' THEN 'Not Registered' ELSE ProductColor END AS "Product Color", 
  CASE WHEN ProductSize IS NULL THEN 'Not Registered' ELSE ProductSize END AS "Product Size", 
  CASE WHEN ProductLine IS NULL THEN 'Not Registered' ELSE ProductLine END AS "Product Line", 
  CASE WHEN ProductModelName IS NULL THEN 'Not Registered' ELSE ProductModelName END AS "Product Model Name", 
  CASE WHEN ProductDescription IS NULL THEN 'Not Registered' ELSE ProductDescription END AS "Product Description", 
  ProductStatus AS "ProductStatus"
FROM 
  products p


