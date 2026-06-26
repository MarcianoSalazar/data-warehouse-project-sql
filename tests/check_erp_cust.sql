-- Identift Out-Of-Range Dates

SELECT DISTINCT
	bdate
 FROM bronze.erp_cust_az12
 WHERE bdate < '1924-01-01' OR bdate > GETDATE();




 -- Data Standardization and Consistency

 SELECT DISTINCT 
    CASE WHEN UPPER(TRIM(gen)) IN  ('M' ,'MALE') THEN 'Male'
         WHEN UPPER(TRIM(gen))IN  ('F' ,'FEMALE') THEN 'Female'
         ELSE  'N/A'
    END gen
 FROM bronze.erp_cust_az12

 -- Check Overall Data
 SELECT * FROM silver.erp_cust_az12