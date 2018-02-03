--Neelesh Shah, Feb 03 2018
--Install script for FIVA objects
--   This will delete all FIVA objects and created sequence, tables, packages, triggers.
--   It will also load some data in the lookup code table and enable constraints
--   And print a list of invalid objects before and after the install
set echo on
set feedback on
--
select * from user_objects where status = 'INVALID';
@@drop_fiva_objects.sql
@@create_fiva_sequence.sql
@@create_fiva_tables.sql
@@fiva_user_utils.pls.sql
@@fiva_user_utils.plb.sql
@@create_fiva_triggers.sql
@@fiva_lookup_data.sql
@@create_fiva_constraints.sql
select * from user_objects where status = 'INVALID';