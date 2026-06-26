-- Compare erp_loc and crm_cust_info
SELECT REPLACE(cid, '-', '') as cid
FROM bronze.erp_loc_a101
WHERE REPLACE(cid, '-', '') NOT IN 
(SELECT cst_key FROM silver.crm_cust_info);


-- Data Standardization and Consistency
SELECT DISTINCT 
	cntry AS old_cntry,
	CASE WHEN TRIM(cntry) = 'DE' THEN 'Germany'
		 WHEN TRIM(cntry) IN ('US', 'USA') THEN 'United States'
		 WHEN TRIM(cntry) = '' OR TRIM(cntry) IS NULL THEN 'N/A'
		 ELSE TRIM(cntry)
	END cntry
FROM silver.erp_loc_a101
ORDER BY cntry



SELECT * FROM silver.erp_loc_a101