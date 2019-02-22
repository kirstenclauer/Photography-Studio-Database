set ECHO ON ;

SELECT clientfirstname, clientlastname, clientid FROM client;

SELECT 
    clientfirstname, 
    clientlastname, 
    clientid 
FROM 
    client
WHERE 
    clientlastname = 'Ketchum' ;
    
SELECT 
    proofid 
FROM 
    packageorderform 
WHERE 
    orderformid = 5001 ;

