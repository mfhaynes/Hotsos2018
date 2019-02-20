set echo off
set autotrace off
set timing on
set lines 145
set pages 40
pause About to execute UPDATE SRC_TEST_TAB SET FIELD2=100 WHERE ROWNUM=1;
set echo on
UPDATE SRC_TEST_TAB SET FIELD2=100 WHERE ROWNUM=1;
COMMIT;
set echo off
set autotrace on
pause About to execute SELECT rc_test_func(123456) FROM DUAL...
set echo on
SELECT rc_test_func(123456) FROM DUAL;
set echo off
pause About to execute SELECT rc_test_func(123456) FROM DUAL...
set echo on
SELECT rc_test_func(123456) FROM DUAL;
set echo off
set autotrace off
pause About to execute UPDATE SRC_TEST_TAB SET FIELD1='PRETEND_TAB2' WHERE ROWNUM=1;
set echo on
UPDATE SRC_TEST_TAB SET FIELD1='PRETEND_TAB2' WHERE ROWNUM=1;
COMMIT;
set echo off
set autotrace on
pause About to execute SELECT rc_test_func(123456) FROM DUAL...
set echo on
SELECT rc_test_func(123456) FROM DUAL;
set echo off
pause About to execute SELECT rc_test_func(123456) FROM DUAL...
set echo on
SELECT rc_test_func(123456) FROM DUAL;
set echo off
set autotrace off
pause About to execute SELECT FIELD1 FROM SRC_TEST_TAB WHERE ROWNUM=1 FOR UPDATE...
set echo on
SELECT FIELD1 FROM SRC_TEST_TAB WHERE ROWNUM=1 FOR UPDATE;
COMMIT;
set echo off
set autotrace on
pause About to execute SELECT rc_test_func(123456) FROM DUAL...
set echo on
SELECT rc_test_func(123456) FROM DUAL;
set echo off
pause About to execute SELECT rc_test_func(123456) FROM DUAL...
set echo on
SELECT rc_test_func(123456) FROM DUAL;
set echo off
set autotrace off
pause About to execute UPDATE SRC_TEST_TAB SET FIELD2=1000 WHERE ROWNUM=1;
set echo on
UPDATE SRC_TEST_TAB SET FIELD2=1000 WHERE ROWNUM=1;
ROLLBACK;
set echo off
set autotrace on
pause About to execute SELECT rc_test_func(123456) FROM DUAL
set echo on
SELECT rc_test_func(123456) FROM DUAL;
set echo off
pause About to execute SELECT rc_test_func(123456) FROM DUAL...
set echo on
SELECT rc_test_func(123456) FROM DUAL;
set echo off
pause About to execute dbms_result_cache.bypass (bypass_mode=>TRUE, session=>TRUE);
set echo on
exec dbms_result_cache.bypass (bypass_mode=>TRUE, session=>TRUE);
set echo off
pause About to execute SELECT rc_test_func(123456) FROM DUAL
set echo on
SELECT rc_test_func(123456) FROM DUAL;
exec dbms_result_cache.bypass (bypass_mode=>FALSE, session=>TRUE);
set echo off
