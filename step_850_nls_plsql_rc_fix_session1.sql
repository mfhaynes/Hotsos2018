set echo on
ALTER SESSION SET nls_date_format = 'YYYY.MM.DD';
set echo off
set autotrace on
pause About to execute SELECT src_nls_test_func_w_input('YYYY.MM.DD') FROM dual for the first time...
set echo on
SELECT src_nls_test_func_w_input('YYYY.MM.DD') FROM dual;
set echo off
pause About to execute SELECT src_nls_test_func_w_input('YYYY.MM.DD') FROM dual for the second time...
set echo on
SELECT src_nls_test_func_w_input('YYYY.MM.DD') FROM dual;
