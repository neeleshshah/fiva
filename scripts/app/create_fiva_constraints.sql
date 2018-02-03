--Neelesh Shah, Feb 03 2018
--This script will created constraints and indexes for foreign key columns
-- constraints
alter table fiva_lookup_code
   add constraint fiva_lookup_code_uk1 unique (parent_id ,code) enable;
   
alter table fiva_lookup_code
   add constraint fiva_lookup_code_fk1 foreign key (parent_id) references fiva_lookup_code (id) enable;
   
alter table fiva_file
   add constraint fiva_file_uk1 unique (name) enable;
   
alter table fiva_file_structure
   add constraint fiva_file_structure_fk1 foreign key (file_id) references fiva_file (id) enable;

alter table fiva_file_structure
   add constraint fiva_file_structure_fk2 foreign key (column_type_id) references fiva_lookup_code (id) enable;
 
alter table fiva_file_structure
   add constraint fiva_file_structure_uk1 unique (file_id ,column_name) enable;
   
alter table fiva_uploaded_file
   add constraint fiva_uploaded_file_fk1 foreign key (file_id) references fiva_file (id) enable;

alter table fiva_uploaded_record
   add constraint fiva_uploaded_record_fk1 foreign key (uploaded_file_id) references fiva_uploaded_file (id) enable;
   
alter table fiva_uploaded_file_status
   add constraint fiva_uploaded_file_status_fk1 foreign key (uploaded_file_id) references fiva_uploaded_file (id) enable;

alter table fiva_uploaded_file_status
   add constraint fiva_uploaded_file_status_fk2 foreign key (status_type_id) references fiva_lookup_code (id) enable;
 
alter table fiva_validation_error
   add constraint fiva_validation_error_fk1 foreign key (uploaded_file_id) references fiva_uploaded_file (id) enable;
   
alter table fiva_validation_error
   add constraint fiva_validation_error_fk2 foreign key (uploaded_record_id) references fiva_uploaded_record (id) enable;   
--
create index fiva_lookup_code_ix1 on fiva_lookup_code (parent_id);
create index fiva_file_structure_ix1 on fiva_file_structure (file_id);
create index fiva_file_structure_ix2 on fiva_file_structure (column_type_id);
create index fiva_uploaded_file_ix1 on fiva_uploaded_file (file_id);
create index fiva_uploaded_record_ix1 on fiva_uploaded_record (uploaded_file_id);
create index fiva_uploaded_file_status_ix1 on fiva_uploaded_file_status (uploaded_file_id);
create index fiva_uploaded_file_status_ix2 on fiva_uploaded_file_status (status_type_id);
create index fiva_validation_error_ix1 on fiva_validation_error (uploaded_file_id);
create index fiva_validation_error_ix2 on fiva_validation_error (uploaded_record_id);
