--Neelesh Shah, Feb 03 2018
--Lookup code uses a sequence for its IDs to make it easier for data to be imported with ID (as it is used in PARENT_ID) of FIVA_LOOKUP_CODE table
--   The other tables used generated always as identity column for primary key
create sequence fiva_lookup_code_seq;