begin;
insert into
    reservations (during)
values
    ('[2021-03-01 10:00:00, 2021-03-01 12:00:00)')
  , ('[2021-03-01 13:00:00, 2021-03-01 13:30:00)')
;

-- This insert will fail and rollback the transaction
insert into
    reservations (during)
values
    ('[2021-03-01 09:30:00, 2021-03-01 10:30:00)')
;
end;
