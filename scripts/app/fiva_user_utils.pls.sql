create or replace package fiva_user_utils as
   --01.01.01 Neelesh Shah, Feb 03 2018, Initial creation. Has one function to get user.
   
   -- This function returns APP_USER (APEX) or USER (DB SCHEMA USER) if APP_USER is not available
   function get_user return varchar2;
end fiva_user_utils;
/

