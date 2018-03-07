set echo on
CREATE TABLE src_test_tab (field1 CHAR(1000), field2 NUMBER);
INSERT INTO src_test_tab 
(SELECT object_name, object_id FROM dba_objects);
commit;
INSERT INTO src_test_tab
(SELECT rtrim(field1)||rtrim(field1), field2+1000000 
FROM src_test_tab); 
commit;
INSERT INTO src_test_tab
(SELECT rtrim(field1)||rtrim(field1), field2+1000000 
FROM src_test_tab); 
commit;
INSERT INTO src_test_tab
(SELECT rtrim(field1)||rtrim(field1), field2+1000000 
FROM src_test_tab); 
commit;
CREATE OR REPLACE FUNCTION rc_test_func (max_field2 IN NUMBER)
  RETURN NUMBER
  RESULT_CACHE
IS
  return_val NUMBER;
BEGIN
  SELECT avg(field2) INTO return_val
  FROM src_test_tab
  WHERE field2 < max_field2;
  RETURN return_val;
END;
/
CREATE TABLE src_force_test_tab (field1 CHAR(1000), field2 NUMBER);
INSERT INTO src_force_test_tab 
(SELECT object_name, object_id FROM dbA_objects);
COMMIT;
INSERT INTO src_force_test_tab
(SELECT rtrim(field1)||rtrim(field1), field2+1000000 
FROM src_force_test_tab); 
COMMIT;
INSERT INTO src_force_test_tab
(SELECT rtrim(field1)||rtrim(field1), field2+1000000 
FROM src_force_test_tab); 
COMMIT;
INSERT INTO src_force_test_tab
(SELECT rtrim(field1)||rtrim(field1), field2+1000000 
FROM src_force_test_tab); 
COMMIT;
CREATE TABLE src_stores
(store_id         NUMBER,
 store_address    VARCHAR2(200),
 store_manager_id NUMBER,
 store_notes      VARCHAR2(4000));
CREATE TABLE src_sales
(sale_id          NUMBER,
 sale_store_id    NUMBER,
 sale_amount      NUMBER,
 sale_time        DATE, 
 sale_notes       CHAR(128));
INSERT INTO src_stores
(SELECT object_id, dbms_random.string('x', TRUNC(dbms_random.value(30,120))),
        TRUNC(dbms_random.value(1000,2400)),
        dbms_random.string('p', TRUNC(dbms_random.value(0,4000)))
 FROM dba_objects
 WHERE rownum <= 20000);
INSERT INTO src_sales
(SELECT * FROM
 (SELECT object_id*object_id, object_id, round(sqrt(object_id),2)+user_id,
         sysdate-(object_id/1440)-(user_id/24), object_name
  FROM dba_objects JOIN src_stores ON object_id = store_id
  CROSS JOIN (SELECT * FROM dba_users WHERE user_id < 1000)
  WHERE ROWNUM <= 1000000
  ORDER by sysdate-(object_id/1440)-(user_id/24))
);
CREATE GLOBAL TEMPORARY TABLE src_gtt_test
(field1 NUMBER)
ON COMMIT PRESERVE ROWS;
CREATE OR REPLACE FUNCTION src_gtt_test_func 
RETURN NUMBER RESULT_CACHE IS
return_value NUMBER;
BEGIN
  SELECT MAX(field1) INTO return_value FROM src_gtt_test;
  RETURN return_value;
END;
/
CREATE TABLE src_nls_date_test (field1 DATE);
INSERT INTO src_nls_date_test (field1) VALUES ('15-JAN-2018');
COMMIT;
CREATE OR REPLACE FUNCTION src_nls_test_func 
RETURN VARCHAR2 RESULT_CACHE IS
  max_date DATE;
BEGIN
  SELECT max(field1) INTO max_date FROM src_nls_date_test;
  RETURN to_char(max_date);
END;
/
CREATE OR REPLACE FUNCTION src_nls_test_func_w_input (dt_format VARCHAR2)
RETURN VARCHAR2 RESULT_CACHE IS
  max_date DATE;
BEGIN
  SELECT max(field1) INTO max_date FROM src_nls_date_test;
  RETURN to_char(max_date, dt_format);
END;
/
