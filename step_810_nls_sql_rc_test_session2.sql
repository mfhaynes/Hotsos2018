set autotrace off
set echo off
pause Checking current date format for this session...
set echo on
SELECT sysdate FROM dual;
set echo off
set autotrace on
pause About to execute SELECT /*+ RESULT_CACHE */ field1 FROM src_nls_date_test...
set echo on
SELECT /*+ RESULT_CACHE */ field1 FROM src_nls_date_test;
set echo off
pause About to execute SELECT /*+ RESULT_CACHE */ to_char(field1) FROM src_nls_date_test...
set echo on
SELECT /*+ RESULT_CACHE */ to_char(field1) FROM src_nls_date_test;
set echo off
pause About to execute SELECT /*+ RESULT_CACHE */ to_char(field1) FROM src_nls_date_test for a second time...
set echo on
SELECT /*+ RESULT_CACHE */ to_char(field1) FROM src_nls_date_test;
