set autotrace off
set echo off
pause Checking current date format for this session...
set echo on
SELECT sysdate FROM dual;
set echo off
set autotrace on
pause About to execute SELECT src_nls_test_func() FROM dual 
set echo on
SELECT src_nls_test_func() FROM dual;
set echo off
pause About to execute SELECT to_date(src_nls_test_func()) FROM dual 
set echo on
SELECT to_date(src_nls_test_func()) FROM dual;
