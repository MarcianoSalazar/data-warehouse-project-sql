
-- Check for unwanted spaces
SELECT 
	*
FROM bronze.erp_px_cat_g1v2
WHERE cat != TRIM(cat)  
OR subcat != TRIM(subcat) 
OR maintenance != TRIM(maintenance)

-- Data Standardization and Consistency
SELECT DISTINCT
	maintenance
FROM bronze.erp_px_cat_g1v2

-- Check Overall Data
SELECT * FROM silver.erp_px_cat_g1v2

