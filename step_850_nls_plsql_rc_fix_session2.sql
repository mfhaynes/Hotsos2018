set autotrace off
set echo off
pause Checking current date format for this session...
set echo on
SELECT sysdate FROM dual;
set echo off
set autotrace on
pause About to execute SELECT src_nls_test_func_w_input('DD-MON-YY') FROM dual for the first time...
set echo on
SELECT src_nls_test_func_w_input('DD-MON-YY') FROM dual;
set echo off
pause About to execute SELECT src_nls_test_func_w_input('DD-MON-YY') FROM dual for the second time...
set echo on
SELECT src_nls_test_func_w_input('DD-MON-YY') FROM dual;
