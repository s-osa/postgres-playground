-- `psql -f 03_gist_index_on_range.sql ...`
--
-- Performance of GiST index
-- https://www.postgresql.jp/document/9.4/html/rangetypes.html

\i 03a_create_reservations_table.sql
\i 03b_insert_reservations.sql
\i 03c_select_reservations.sql
\i 03d_drop_reservations_table.sql
