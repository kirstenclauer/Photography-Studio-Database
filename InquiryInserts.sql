--Inquiry Form Inserts
set ECHO ON ;

insert into inquiry(servicetype, inquiryformid, client_clientid) values('Sit-in', 2000, 1000); 

insert into inquiry(servicetype, inquiryformid, client_clientid) values('Wedding', 2001, 1001);

insert into inquiry(servicetype, inquiryformid, client_clientid) values('Parade', 2002, 1002);

insert into inquiry(servicetype, inquiryformid, client_clientid) values('Concert', 2003, 1003);

SELECT * FROM inquiry;