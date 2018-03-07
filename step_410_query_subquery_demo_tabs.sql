set echo off
pause About to run "Problem" query...
set autotrace on
set echo on
SELECT store_manager_id, SUM(sale_amount)
FROM src_stores JOIN src_sales ON store_id = sale_store_id
WHERE sale_time > SYSDATE-1
GROUP BY store_manager_id
ORDER BY SUM(sale_amount) DESC
FETCH NEXT 10 ROWS ONLY;
set echo off
pause About to run CREATE INDEX sale_time_idx ON src_sales (sale_time)...
set echo on
CREATE INDEX sale_time_idx ON src_sales (sale_time);
set echo off
pause About to run "Problem" query...
set echo on
SELECT store_manager_id, SUM(sale_amount)
FROM src_stores JOIN src_sales ON store_id = sale_store_id
WHERE sale_time > SYSDATE-1
GROUP BY store_manager_id
ORDER BY SUM(sale_amount) DESC
FETCH NEXT 10 ROWS ONLY;
set echo off
pause About to run "Problem" query with RESULT_CACHE hint...
set echo on
SELECT /*+ RESULT_CACHE */ store_manager_id, SUM(sale_amount)
FROM src_stores JOIN src_sales ON store_id = sale_store_id
WHERE sale_time > SYSDATE-1
GROUP BY store_manager_id
ORDER BY SUM(sale_amount) DESC
FETCH NEXT 10 ROWS ONLY;
set echo off
pause About to run "Problem" query with RESULT_CACHE hint for the second time...
set echo on
SELECT /*+ RESULT_CACHE */ store_manager_id, SUM(sale_amount)
FROM src_stores JOIN src_sales ON store_id = sale_store_id
WHERE sale_time > SYSDATE-1
GROUP BY store_manager_id
ORDER BY SUM(sale_amount) DESC
FETCH NEXT 10 ROWS ONLY;
set echo off
pause About to run "Problem" query with RESULT_CACHE hint in subquery...
set echo on
WITH store_info_subq AS
(SELECT /*+ RESULT_CACHE */ store_id, store_manager_id FROM src_stores)
SELECT store_manager_id, SUM(sale_amount)
FROM store_info_subq JOIN src_sales ON store_id = sale_store_id
WHERE sale_time > SYSDATE-1
GROUP BY store_manager_id
ORDER BY SUM(sale_amount) DESC
FETCH NEXT 10 ROWS ONLY;
set echo off
pause About to run "Problem" query with RESULT_CACHE hint in subquery for the second time...
set echo on
WITH store_info_subq AS
(SELECT /*+ RESULT_CACHE */ store_id, store_manager_id FROM src_stores)
SELECT store_manager_id, SUM(sale_amount)
FROM store_info_subq JOIN src_sales ON store_id = sale_store_id
WHERE sale_time > SYSDATE-1
GROUP BY store_manager_id
ORDER BY SUM(sale_amount) DESC
FETCH NEXT 10 ROWS ONLY;
