--Neelesh Shah, Feb 03 2018
--Create FIVA user and grant connect and resource
--Creating  user FIVA_010101 in USERS tablespace with password as oracle. Change password after creation
create user fiva_010101 identified by oracle default tablespace users quota unlimited on users;
--Granting connect, resource to the new user
grant connect, resource to fiva_010101;
