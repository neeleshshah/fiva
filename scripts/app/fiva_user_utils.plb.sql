create or replace package body fiva_user_utils as
   --01.01.01 Neelesh Shah, Feb 03 2018, Initial creation. Has one function to get user.
   
   -- This function returns APP_USER (APEX) or USER (DB SCHEMA USER) if APP_USER is not available
   -- This is typically used in before insert or update triggers on tables.
   function get_user return varchar2 as 
   begin
      return upper(nvl(v('APP_USER')  ,user));
   end get_user;
   
end fiva_user_utils;
/

