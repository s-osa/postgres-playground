select
    count(*)
from
    reservations r
;

select *
from
    reservations r
where
    r.during @> (1614556800 + 123456) :: int8
;

explain analyze
select *
from
    reservations r
where
    r.during @> (1614556800 + 123456) :: int8
;

select *
from
    reservations r
where
      r.room_id = 1
  and r.during && int8range(1614556800 + 123456, 1614556800 + 234567)
;

explain analyze
select *
from
    reservations r
where
      r.room_id = 1
  and r.during && int8range(1614556800 + 123456, 1614556800 + 234567)
;
