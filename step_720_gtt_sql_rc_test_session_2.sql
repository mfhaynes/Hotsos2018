pause About to put a bunch more rows into SRC_GTT_TEST...
set autotrace off
set echo on
INSERT INTO src_gtt_test (select * from src_gtt_test);
INSERT INTO src_gtt_test (select * from src_gtt_test);
INSERT INTO src_gtt_test (select * from src_gtt_test);
INSERT INTO src_gtt_test (select * from src_gtt_test);
INSERT INTO src_gtt_test (select * from src_gtt_test);
INSERT INTO src_gtt_test (select * from src_gtt_test);
INSERT INTO src_gtt_test (select * from src_gtt_test);
INSERT INTO src_gtt_test (select * from src_gtt_test);
INSERT INTO src_gtt_test (select * from src_gtt_test);
INSERT INTO src_gtt_test (select * from src_gtt_test);
INSERT INTO src_gtt_test (select * from src_gtt_test);
INSERT INTO src_gtt_test (select * from src_gtt_test);
INSERT INTO src_gtt_test (select * from src_gtt_test);
INSERT INTO src_gtt_test (select * from src_gtt_test);
INSERT INTO src_gtt_test (select * from src_gtt_test);
INSERT INTO src_gtt_test (select * from src_gtt_test);
commit;
set echo off
pause About to execute SELECT /*+ RESULT_CACHE */ distinct field1 FROM src_gtt_test for the first time...
set autotrace on
set echo on
SELECT /*+ RESULT_CACHE */ distinct field1 FROM src_gtt_test;
set echo off
pause About to execute SELECT /*+ RESULT_CACHE */ distinct field1 FROM src_gtt_test for the second time...
set echo on
SELECT /*+ RESULT_CACHE */ distinct field1 FROM src_gtt_test;
