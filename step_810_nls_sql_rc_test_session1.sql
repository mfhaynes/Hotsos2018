set echo on
ALTER SESSION SET nls_date_format = 'YYYY.MM.DD';
set echo off
set autotrace on
pause About to execute SELECT /*+ RESULT_CACHE */ field1 FROM src_nls_date_test for the first time...
set echo on
SELECT /*+ RESULT_CACHE */ field1 FROM src_nls_date_test;
set echo off
pause About to execute SELECT /*+ RESULT_CACHE */ field1 FROM src_nls_date_test for the second time...
set echo on
SELECT /*+ RESULT_CACHE */ field1 FROM src_nls_date_test;
set echo off
pause About to execute SELECT /*+ RESULT_CACHE */ to_char(field1) FROM src_nls_date_test for the first time...
set echo on
SELECT /*+ RESULT_CACHE */ to_char(field1) FROM src_nls_date_test;
set echo off
pause About to execute SELECT /*+ RESULT_CACHE */ to_char(field1) FROM src_nls_date_test for the second time...
set echo on
SELECT /*+ RESULT_CACHE */ to_char(field1) FROM src_nls_date_test;
