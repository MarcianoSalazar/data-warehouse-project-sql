-- Check for Nulls and Duplicates
-- Expectation: No Result
SELECT
	prd_id,
	COUNT(*)
FROM bronze.crm_prd_info
GROUP BY prd_id
HAVING COUNT(*) != 1 OR prd_id IS NULL


-- Check unwanted spaces 
-- Expectation: No Result

SELECT prd_nm
FROM bronze.crm_prd_info
WHERE prd_nm != TRIM(prd_nm)

-- Check for Nulls Or Negative Nums
-- Expectation: No Result
SELECT 
	prd_id,
	prd_cost 
FROM bronze.crm_prd_info
WHERE prd_cost IS NULL OR prd_cost < 0

-- Data Standardization
SELECT DISTINCT prd_line FROM bronze.crm_prd_info


-- Check for Invalid Date Orders
SELECT *
FROM bronze.crm_prd_info
WHERE prd_start_dt > prd_end_dt	


SELECT * FROM silver.crm_prd_info