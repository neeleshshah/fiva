--Neelesh Shah, Feb 03 2018
--Seed data for lookup code table.
--   This script created Column Type and Uploaded file status types 
SET DEFINE OFF;
Insert into FIVA_LOOKUP_CODE (ID,CODE,PARENT_ID,DESCRIPTION,DISPLAY_ORDER,FLEX_CODE_1,FLEX_CODE_2,FLEX_CODE_3,ACTIVE,COMMENTS) values (1,'COLUMN_TYPE',null,'Column Types like TEXT, NUMBER, DATE',10,null,null,null,'Y',null);
Insert into FIVA_LOOKUP_CODE (ID,CODE,PARENT_ID,DESCRIPTION,DISPLAY_ORDER,FLEX_CODE_1,FLEX_CODE_2,FLEX_CODE_3,ACTIVE,COMMENTS) values (2,'TEXT',1,'Text Column Type',10,null,null,null,'Y',null);
Insert into FIVA_LOOKUP_CODE (ID,CODE,PARENT_ID,DESCRIPTION,DISPLAY_ORDER,FLEX_CODE_1,FLEX_CODE_2,FLEX_CODE_3,ACTIVE,COMMENTS) values (3,'NUMBER',1,'Number Column Type',20,null,null,null,'Y',null);
Insert into FIVA_LOOKUP_CODE (ID,CODE,PARENT_ID,DESCRIPTION,DISPLAY_ORDER,FLEX_CODE_1,FLEX_CODE_2,FLEX_CODE_3,ACTIVE,COMMENTS) values (4,'DATE',1,'Date Column Type',30,null,null,null,'Y',null);
Insert into FIVA_LOOKUP_CODE (ID,CODE,PARENT_ID,DESCRIPTION,DISPLAY_ORDER,FLEX_CODE_1,FLEX_CODE_2,FLEX_CODE_3,ACTIVE,COMMENTS) values (5,'UPLOADED_FILE_STATUS_TYPE',null,'Status Types for Uploaded Files',20,null,null,null,'Y',null);
Insert into FIVA_LOOKUP_CODE (ID,CODE,PARENT_ID,DESCRIPTION,DISPLAY_ORDER,FLEX_CODE_1,FLEX_CODE_2,FLEX_CODE_3,ACTIVE,COMMENTS) values (6,'UPLOADED',5,'Uploaded',10,null,null,null,'Y',null);
Insert into FIVA_LOOKUP_CODE (ID,CODE,PARENT_ID,DESCRIPTION,DISPLAY_ORDER,FLEX_CODE_1,FLEX_CODE_2,FLEX_CODE_3,ACTIVE,COMMENTS) values (7,'VALIDATING',5,'Validating',20,null,null,null,'Y',null);
Insert into FIVA_LOOKUP_CODE (ID,CODE,PARENT_ID,DESCRIPTION,DISPLAY_ORDER,FLEX_CODE_1,FLEX_CODE_2,FLEX_CODE_3,ACTIVE,COMMENTS) values (8,'VALIDATED',5,'Validated',30,null,null,null,'Y',null);
Insert into FIVA_LOOKUP_CODE (ID,CODE,PARENT_ID,DESCRIPTION,DISPLAY_ORDER,FLEX_CODE_1,FLEX_CODE_2,FLEX_CODE_3,ACTIVE,COMMENTS) values (9,'ERRORED',5,'Errored',40,null,null,null,'Y',null);