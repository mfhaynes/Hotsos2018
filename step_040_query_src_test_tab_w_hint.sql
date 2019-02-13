set echo off
set autotrace on
set timing on
set lines 150
set pages 40
pause About to execute SELECT /*+ RESULT_CACHE */ AVG(FIELD2) FROM SRC_TEST_TAB...
set echo on
SELECT /*+ RESULT_CACHE */ AVG(FIELD2) FROM SRC_TEST_TAB;
set echo off
pause About to execute SELECT /*+ RESULT_CACHE */ AVG(FIELD2) FROM SRC_TEST_TAB...
set echo on
SELECT /*+ RESULT_CACHE */ AVG(FIELD2) FROM SRC_TEST_TAB;
