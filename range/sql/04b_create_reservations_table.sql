create table reservations
(
    room_id bigint,
    during  int8range,
    exclude using gist (room_id with =, during with &&)
);

create index reservations_room_id_during_idx on reservations using gist (room_id, during);
create index reservations_during_idx on reservations using gist (during);
