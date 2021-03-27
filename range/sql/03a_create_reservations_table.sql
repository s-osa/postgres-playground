create table reservations
(
    during         int8range,
    indexed_during int8range
);

create index reservations_indexed_during_idx on reservations using gist (indexed_during);
