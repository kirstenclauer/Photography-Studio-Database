--Insert Clients 
set ECHO ON ;

insert into Client(clientid, clientfirstname, clientlastname, clientaddress, 
	clientcity, clienttelephonenumber, clientzip, clientstate) values(1000, 
	'Rob', 'Kingley', '12 Jupiter Street', 'Jupiter', 1234567891, 73629, 'TX'); 

insert into Client(clientid, clientfirstname, clientlastname, clientaddress, 
	clientcity, clienttelephonenumber, clientzip, clientstate) values(1001, 
	'Whiskers', 'Thecat', '834 meow road', 'San Francisco', 8637297337, 78829, 'CA'); 

insert into Client(clientid, clientfirstname, clientlastname, clientaddress, 
	clientcity, clienttelephonenumber, clientzip, clientstate) values(1002, 
	'Ash', 'Ketchum', '827 Kanto Road', 'Palet Town', 7281037272, 82003, 'KA'); 

insert into Client(clientid, clientfirstname, clientlastname, clientaddress, 
	clientcity, clienttelephonenumber, clientzip, clientstate) values(1003, 
	'Pikachu', 'Ketchum', '827 Kanto Road', 'Palet Town', 882773664, 82003, 'KA'); 

SELECT * FROM Client;     

 

