-- Simple range type example
-- https://www.postgresql.jp/document/9.4/html/rangetypes.html
create table reservations
(
    room_id int,
    during  tsrange
);
