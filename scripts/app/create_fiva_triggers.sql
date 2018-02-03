--Neelesh Shah, Feb 03 2018
--Lookup code uses a sequence for its IDs to make it easier for data to be imported with ID (as it is used in PARENT_ID) of FIVA_LOOKUP_CODE table
--   The other tables used generated always as identity column for primary key
-- The triggers also provide data for audit columns and upper text values as appropriate
create or replace trigger fiva_lookup_code_biu 
   before insert or update on fiva_lookup_code 
   referencing old as old new as new 
   for each row 
begin
  if inserting then
     if :new.id is null then
        select fiva_lookup_code_seq.nextval into :new.id from dual;
     end if;
     
     if :new.created_by is null then 
        :new.created_by := fiva_user_utils.get_user;
     end if;
     
     if :new.created_date is null then 
        :new.created_date := sysdate;
     end if;
  else
     :new.updated_by := fiva_user_utils.get_user;
     :new.updated_date := sysdate;
  end if;
  
  :new.code := upper(:new.code);
  :new.active := upper(:new.active);
end;
/

create or replace trigger fiva_file_biu 
   before insert or update on fiva_file 
   referencing old as old new as new 
   for each row 
begin
  if inserting then
     if :new.created_by is null then 
        :new.created_by := fiva_user_utils.get_user;
     end if;
     
     if :new.created_date is null then 
        :new.created_date := sysdate;
     end if;
  else
     :new.updated_by := fiva_user_utils.get_user;
     :new.updated_date := sysdate;
  end if;
  
  :new.name := upper(:new.name);
  :new.active := upper(:new.active);
end;
/

create or replace trigger fiva_file_structure_biu 
   before insert or update on fiva_file_structure 
   referencing old as old new as new 
   for each row 
begin
  if inserting then
     if :new.created_by is null then 
        :new.created_by := fiva_user_utils.get_user;
     end if;
     
     if :new.created_date is null then 
        :new.created_date := sysdate;
     end if;
  else
     :new.updated_by := fiva_user_utils.get_user;
     :new.updated_date := sysdate;
  end if;
  
  :new.column_name := upper(:new.column_name);
  :new.column_mandatory := upper(:new.column_mandatory);
  :new.column_fitsize := upper(:new.column_fitsize);
  :new.column_lov := upper(:new.column_lov);
  :new.column_validate_api := upper(:new.column_validate_api);
  :new.active := upper(:new.active);
end;
/

create or replace trigger fiva_uploaded_file_biu 
   before insert or update on fiva_uploaded_file 
   referencing old as old new as new 
   for each row 
begin
  if inserting then
     if :new.created_by is null then 
        :new.created_by := fiva_user_utils.get_user;
     end if;
     
     if :new.created_date is null then 
        :new.created_date := sysdate;
     end if;
  else
     :new.updated_by := fiva_user_utils.get_user;
     :new.updated_date := sysdate;
  end if;
  
  :new.name := upper(:new.name);
end;
/

create or replace trigger fiva_uploaded_file_status_biu 
   before insert on fiva_uploaded_file_status
   referencing old as old new as new 
   for each row 
begin
   if :new.changed_by is null then 
      :new.changed_by := fiva_user_utils.get_user;
   end if;
     
   if :new.status_date is null then 
      :new.status_date := sysdate;
   end if;
end;
/

create or replace trigger fiva_uploaded_record_biu 
   before insert or update on fiva_uploaded_record
   referencing old as old new as new 
   for each row 
begin
  if inserting then
     if :new.created_by is null then 
        :new.created_by := fiva_user_utils.get_user;
     end if;
     
     if :new.created_date is null then 
        :new.created_date := sysdate;
     end if;
  else
     :new.updated_by := fiva_user_utils.get_user;
     :new.updated_date := sysdate;
  end if;
end;
/

create or replace trigger fiva_validation_error_biu 
   before insert on fiva_validation_error
   referencing old as old new as new 
   for each row 
begin
   if :new.created_by is null then 
      :new.created_by := fiva_user_utils.get_user;
   end if;
     
   if :new.created_date is null then 
      :new.created_date := sysdate;
   end if;

end;
/