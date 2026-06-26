-- Check for Nulls or Duplicates in Primary Key
-- Expectation: No Result
SELECT 
	cst_id,
	COUNT(*)
FROM silver.crm_cust_info
GROUP BY cst_id
HAVING COUNT(*) != 1 OR cst_id IS NULL


-- Check for Unwanted Spaces
-- Expectation: No Result
SELECT 
	cst_firstname
FROM silver.crm_cust_info
WHERE TRIM(cst_firstname) != cst_firstname



-- Data Standardization & Consistency
SELECT DISTINCT cst_gndr
FROM silver.crm_cust_info


SELECT DISTINCT *
FROM silver.crm_cust_info