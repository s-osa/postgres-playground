create table reservations
(
    during  tsrange,
    exclude using gist (during with &&)
);
