--Neelesh Shah, Feb 03 2018
-- drop fiva objects
drop sequence fiva_lookup_code_seq;
--
drop table fiva_validation_error cascade constraints purge;
drop table fiva_uploaded_file_status cascade constraints purge;
drop table fiva_uploaded_record cascade constraints purge;
drop table fiva_uploaded_file cascade constraints purge;
drop table fiva_file_structure cascade constraints purge;
drop table fiva_file cascade constraints purge;
drop table fiva_lookup_code cascade constraints purge;
--
drop package body fiva_user_utils;
drop package fiva_user_utils;



