begin;
-- This insertion will succeed because during does not conflict.
insert into
    reservations (room_id, during)
values
    (1, int8range(0, 3600))
;

-- This insertion will succeed because room_id does not conflict.
insert into
    reservations (room_id, during)
values
(1000000, int8range(1614556800, 1614556800 + 36000))
;

-- This insertion will fail because both room_id and duration conflict.
insert into
    reservations (room_id, during)
values
(1, int8range(1614556800, 1614556800 + 36000))
;
end;
