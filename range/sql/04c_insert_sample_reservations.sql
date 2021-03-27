insert into
    reservations (room_id, during)
select
    t1.room_id                                                                    as room_id
  , int8range(1614556800 + 3600 * t2.number, 1614556800 + 3600 * (t2.number + 1)) as during -- 1614556800 means 2021-03-01T00:00:00Z
from
    (
        select
            generate_series as room_id
        from
            generate_series(1, 1000) -- 1K rooms
    ) t1
    cross join (
        select
            generate_series as number
        from
            generate_series(1, 1000) -- 1K reservations / room
    ) t2
;
