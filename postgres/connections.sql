SELECT count(1) count, query FROM pg_stat_activity group by query;

SELECT to_char(a.state_change, 'YYYY-MM-DD HH24:MI:SS') state_change_formatted, a.client_addr, a.query FROM pg_stat_activity a order by 1 DESC;
