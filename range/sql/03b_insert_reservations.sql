insert into
    reservations (during, indexed_during)
select
    int8range(t1.number, t1.number + 10) as during
  , int8range(t1.number, t1.number + 10) as indexed_during
from
    (
        select
            generate_series as number
        from
            generate_series(1, 10000000) -- 10M rows
    ) t1
;
