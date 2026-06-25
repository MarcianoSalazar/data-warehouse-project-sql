
-- Check for Invalid Dates
SELECT 
	NULLIF(sls_due_dt, 0) AS sls_due_dt
FROM silver.crm_sales_details
WHERE sls_due_dt IS NULL 
OR sls_due_dt = 0 
OR LEN(sls_due_dt) != 8 
OR sls_due_dt > 20300101;


-- Check Invalid Date Order
SELECT *
FROM silver.crm_sales_details
WHERE sls_order_dt > sls_ship_dt OR sls_order_dt > sls_due_dt;


-- Check for Nulls and Negative
SELECT 
	sls_quantity,
	CASE WHEN sls_price IS NULL THEN 0
		 ELSE ABS(sls_price)
	END sls_price,
	ABS(sls_quantity) * ABS(sls_price) AS sls_sales
FROM silver.crm_sales_details
WHERE ABS(sls_quantity) * ABS(sls_price) IS NULL 



-- Check Data Consistency: Between Sales, Price, Quantity
-- >>>  Sales = Quantity * Price
-- >>>  Values must not be NULL, zero, or negative
SELECT DISTINCT
	sls_sales,
	sls_price,
	CASE WHEN sls_sales IS NULL OR sls_sales <= 0 OR sls_sales != sls_quantity * ABS(sls_price) 
			THEN sls_quantity * ABS(sls_price)
		 ELSE sls_sales
	END AS new_sls_sales,
	sls_quantity,
	CASE WHEN sls_price < 0 THEN ABS(sls_price)
		 WHEN sls_price = 0 OR sls_price IS NULL THEN sls_sales / sls_quantity
		 ELSE sls_price
	END AS new_sls_price
FROM bronze.crm_sales_details
WHERE sls_quantity * sls_price != sls_sales 
OR sls_sales IS NULL OR sls_quantity IS NULL OR sls_price IS NULL
OR sls_sales <= 0 OR sls_quantity <= 0 OR sls_price <= 0
ORDER BY sls_sales, sls_quantity, sls_price


-- Check the overall Data
SELECT * FROM silver.crm_sales_details