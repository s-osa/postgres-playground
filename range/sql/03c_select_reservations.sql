select
    count(*)
from
    reservations r
;

select *
from
    reservations r
where
    r.during @> 123456 :: int8
;

explain analyze
select *
from
    reservations r
where
    r.during @> 123456 :: int8
;

select *
from
    reservations r
where
    r.indexed_during @> 123456 :: int8
;

explain analyze
select *
from
    reservations r
where
    r.indexed_during @> 123456 :: int8
;
