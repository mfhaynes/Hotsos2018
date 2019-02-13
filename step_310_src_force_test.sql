set echo off
set timing on
set lines 150
set pages 40
col table_name for a30
set autotrace on
pause About to execute SELECT AVG(FIELD2) FROM SRC_FORCE_TEST_TAB...
set echo on
SELECT AVG(FIELD2) FROM SRC_FORCE_TEST_TAB;
set echo off
set autotrace off
pause About to execute SELECT TABLE_NAME, RESULT_CACHE FROM USER_TABLES WHERE TABLE_NAME='SRC_FORCE_TEST_TAB'...
set echo on
SELECT TABLE_NAME, RESULT_CACHE FROM USER_TABLES WHERE TABLE_NAME='SRC_FORCE_TEST_TAB';
set echo off
pause About to execute SELECT AVG(FIELD2) FROM SRC_FORCE_TEST_TAB...
set autotrace on
set echo on
SELECT AVG(FIELD2) FROM SRC_FORCE_TEST_TAB;
set echo off
pause About to execute ALTER TABLE SRC_FORCE_TEST_TAB RESULT_CACHE (MODE FORCE)...
set echo on
ALTER TABLE SRC_FORCE_TEST_TAB RESULT_CACHE (MODE FORCE);
set echo off
pause About to execute SELECT AVG(FIELD2) FROM SRC_FORCE_TEST_TAB...
set echo on
SELECT AVG(FIELD2) FROM SRC_FORCE_TEST_TAB;
set echo off
pause About to execute SELECT AVG(FIELD2) FROM SRC_FORCE_TEST_TAB...
set echo on
SELECT AVG(FIELD2) FROM SRC_FORCE_TEST_TAB;
set echo off
pause About to execute SELECT TABLE_NAME, RESULT_CACHE FROM USER_TABLES WHERE TABLE_NAME='SRC_FORCE_TEST_TAB'...
set autotrace off
set echo on
SELECT TABLE_NAME, RESULT_CACHE FROM USER_TABLES WHERE TABLE_NAME='SRC_FORCE_TEST_TAB';
