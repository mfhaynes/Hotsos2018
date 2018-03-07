set lines 140
set pages 50
set echo off
pause About to execute INSERT INTO src_gtt_test VALUES (456) and commit...
set echo on
INSERT INTO src_gtt_test VALUES (456);
commit;
set echo off
pause About to execute SELECT /*+ RESULT_CACHE */ * FROM src_gtt_test for the first time...
set autotrace on
set echo on
SELECT /*+ RESULT_CACHE */ * FROM src_gtt_test;
set echo off
pause About to execute SELECT /*+ RESULT_CACHE */ * FROM src_gtt_test for the second time...
set echo on
SELECT /*+ RESULT_CACHE */ * FROM src_gtt_test;
