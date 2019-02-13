set echo off
set timing on
set lines 150
set pages 40
set echo on
show parameter result_cache_max
set autotrace traceonly
set echo off
pause About to execute SELECT /*+ RESULT_CACHE */ * FROM SRC_TEST_TAB WHERE FIELD2 <= 400
set echo on
SELECT /*+ RESULT_CACHE */ * FROM SRC_TEST_TAB WHERE FIELD2 <= 400;
set echo off
pause About to execute SELECT /*+ RESULT_CACHE */ * FROM SRC_TEST_TAB WHERE FIELD2 <= 400
set echo on
SELECT /*+ RESULT_CACHE */ * FROM SRC_TEST_TAB WHERE FIELD2 <= 400;
set echo off
pause About to execute SELECT /*+ RESULT_CACHE */ * FROM SRC_TEST_TAB WHERE FIELD2 <= 500
set echo on
SELECT /*+ RESULT_CACHE */ * FROM SRC_TEST_TAB WHERE FIELD2 <= 500;
set echo off
pause About to execute SELECT /*+ RESULT_CACHE */ * FROM SRC_TEST_TAB WHERE FIELD2 <= 500
set echo on
SELECT /*+ RESULT_CACHE */ * FROM SRC_TEST_TAB WHERE FIELD2 <= 500;
set autotrace off
