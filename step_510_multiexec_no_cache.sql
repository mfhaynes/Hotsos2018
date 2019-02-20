set timing on
set serveroutput on
declare 
cursor sales_query IS
SELECT store_manager_id, sale_amount FROM src_stores JOIN src_sales ON store_id = sale_store_id;

type sales_tab_type IS TABLE OF sales_query%rowtype index by pls_integer;

sales_tab  sales_tab_type;
lvar       number;
pre_cg     number;
pre_pr     number;
post_cg    number;
post_pr    number;

begin
  select cg.value, pr.value into pre_cg, pre_pr
  from (select value from v$sesstat, v$statname, v$session where v$sesstat.STATISTIC# = v$statname.STATISTIC#
        and v$session.sid = v$sesstat.sid and v$session.audsid = userenv('sessionid') and name in ('consistent gets')) cg,
       (select value from v$sesstat, v$statname, v$session where v$sesstat.STATISTIC# = v$statname.STATISTIC#
        and v$session.sid = v$sesstat.sid and v$session.audsid = userenv('sessionid') and name in ('physical reads')) pr;

  lvar := 1;
  while lvar <= 2500
  loop
    SELECT store_manager_id, SUM(sale_amount)
    BULK COLLECT INTO sales_tab
    FROM src_stores JOIN src_sales ON store_id = sale_store_id
    WHERE sale_time > SYSDATE-1
    GROUP BY store_manager_id
    ORDER BY SUM(sale_amount) DESC
    FETCH NEXT 10 ROWS ONLY;
    lvar := lvar+1;
  end loop;

  select cg.value, pr.value into post_cg, post_pr
  from (select value from v$sesstat, v$statname, v$session where v$sesstat.STATISTIC# = v$statname.STATISTIC#
        and v$session.sid = v$sesstat.sid and v$session.audsid = userenv('sessionid') and name in ('consistent gets')) cg,
       (select value from v$sesstat, v$statname, v$session where v$sesstat.STATISTIC# = v$statname.STATISTIC#
        and v$session.sid = v$sesstat.sid and v$session.audsid = userenv('sessionid') and name in ('physical reads')) pr;

  dbms_output.put_line('Runs: '||to_char(lvar-1));
  dbms_output.put_line('Consistent Gets: '||to_char(post_cg - pre_cg));
  dbms_output.put_line('Physical Reads: '||to_char(post_pr - pre_pr));
end;
/
