set echo off
set autotrace off
set timing on
set lines 120
set pages 40
pause About to execute UPDATE SRC_TEST_TAB SET FIELD2=1 WHERE ROWNUM=1;
set echo on
UPDATE SRC_TEST_TAB SET FIELD2=1 WHERE ROWNUM=1;
COMMIT;
set echo off
set autotrace on
pause About to execute SELECT /*+ RESULT_CACHE */ AVG(FIELD2) FROM SRC_TEST_TAB...
set echo on
SELECT /*+ RESULT_CACHE */ AVG(FIELD2) FROM SRC_TEST_TAB;
set echo off
pause About to execute SELECT /*+ RESULT_CACHE */ AVG(FIELD2) FROM SRC_TEST_TAB...
set echo on
SELECT /*+ RESULT_CACHE */ AVG(FIELD2) FROM SRC_TEST_TAB;
