--package order form inserts 

set ECHO ON ;

insert into packageorderform(orderformid, albumtype, client_clientid, packagetype, proofid)
values(5000, 'Matted', 1000, 'Basic', 100) ;

insert into packageorderform(orderformid, albumtype, client_clientid, packagetype, proofid)
values(5001, 'Flush', 1001, 'Queen', 101) ;

insert into packageorderform(orderformid, albumtype, client_clientid, packagetype, proofid)
values(5002, 'Press', 1002, 'Basic', 102) ;

insert into packageorderform(orderformid, albumtype, client_clientid, packagetype, proofid)
values(5003, 'Self Mount', 1003, 'Basic', 103) ;

SELECT * FROM packageorderform ;