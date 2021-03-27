select *
from
    reservations r
;

select *
from
    reservations r
where
    r.during @> '2021-03-01 11:00' :: timestamp
    -- https://www.postgresql.jp/document/9.4/html/functions-range.html#RANGE-OPERATORS-TABLE
;
