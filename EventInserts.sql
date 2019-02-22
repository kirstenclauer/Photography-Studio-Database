--Event Inserts
set ECHO ON; 

insert into event(eventaddress, eventcity, eventzip, contract_contractid, cost, servicetype)
values('82 Ocean Lane', 'Oceania', 28749, 3000, 100, 'sit-in');

insert into event(eventaddress, eventcity, eventzip, contract_contractid, cost, servicetype)
values('491 Columbia Mine Road', 'Oceania', 28749, 3001, 800, 'Wedding');

insert into event(eventaddress, eventcity, eventzip, contract_contractid, cost, servicetype)
values('4907 Braxton Street', 'Moss City', 28749, 3002, 400, 'Parade');

insert into event(eventaddress, eventcity, eventzip, contract_contractid, cost, servicetype)
values('3961 Werninger Street', 'Wadena', 28749, 3003, 300, 'Concert');

SELECT * FROM event ;