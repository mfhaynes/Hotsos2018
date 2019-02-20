set lines 145
set pages 50
set echo off
set autotrace off
pause About to execute SELECT * FROM src_gtt_test...
set echo on
SELECT * FROM src_gtt_test;
set echo off
pause About to execute SELECT src_gtt_test_func() FROM dual...
set autotrace on
set echo on
SELECT src_gtt_test_func() FROM dual;
