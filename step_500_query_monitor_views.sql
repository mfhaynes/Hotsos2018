set echo off
col name for a40
col value for a20
set lines 150
set pages 50
set autotrace off
pause About to query V$RESULT_CACHE_STATISTICS...
set echo on
SELECT * FROM v$result_cache_statistics;
set echo off
col name for a140
pause About to query V$RESULT_CACHE_OBJECTS...
set echo on
SELECT * FROM v$result_cache_objects i
WHERE upper(name) LIKE '%SRC%' ORDER BY creation_timestamp;
set echo off
pause About to query V$RESULT_CACHE_MEMORY...
set echo on
SELECT * FROM v$result_cache_memory WHERE object_id = &most_recent_object;
set echo off
pause About to query V$RESULT_CACHE_DEPENDENCY...
set echo on
SELECT * FROM v$result_cache_dependency;
set echo off
pause About to query V$RESULT_CACHE_DEPENDENCY with joins...
col result_name for a75
col dependency_name for a30
col object_name for a30
set echo on
SELECT rcd.result_id, result.name AS result_name, dependency.name AS dependency_name, object.object_name
FROM v$result_cache_dependency rcd JOIN v$result_cache_objects result ON rcd.result_id = result.id
JOIN v$result_cache_objects dependency ON rcd.depend_id = dependency.id
JOIN dba_objects object ON rcd.object_no = object.object_id;
