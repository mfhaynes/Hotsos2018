set lines 145
set pages 50
set echo off
pause About to execute SELECT src_gtt_test_func() FROM dual for the first time...
set autotrace on
set echo on
SELECT src_gtt_test_func() FROM dual;
set echo off
pause About to execute SELECT src_gtt_test_func() FROM dual for the second time...
set echo on
SELECT src_gtt_test_func() FROM dual;
set echo off
pause Go run queries in second session and return here.
pause Now truncate the GTT in this session.
set echo on
TRUNCATE TABLE src_gtt_test;
set echo off
pause Now execute SELECT src_gtt_test_func() FROM dual again...
set echo on
SELECT src_gtt_test_func() FROM dual;
