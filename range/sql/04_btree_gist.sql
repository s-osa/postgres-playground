-- `psql -f 03_gist_index_on_range.sql ...`
--
-- Performance of GiST index
-- https://www.postgresql.jp/document/9.4/html/rangetypes.html

\i 04a_create_extension.sql
\i 04b_create_reservations_table.sql
\i 04c_insert_sample_reservations.sql
\i 04d_select_reservations.sql
\i 04e_insert_reservations.sql
\i 04f_drop_reservations_table.sql
