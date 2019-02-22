--proof

set ECHO ON ; 

insert into proof(proofid, prooflength, proofwidth, packageorderform_orderformid, filter) 
values(100, 10, 10, 5000, 'sepia');

insert into proof(proofid, prooflength, proofwidth, packageorderform_orderformid, filter) 
values(102, 20, 10, 5001, NULL);

insert into proof(proofid, prooflength, proofwidth, packageorderform_orderformid, filter) 
values(103, 8, 12, 5002, NULL);

insert into proof(proofid, prooflength, proofwidth, packageorderform_orderformid, filter) 
values(104, 10, 10, 5003, 'Neutral Density');

insert into proof(proofid, prooflength, proofwidth, packageorderform_orderformid, filter) 
values(105, 8, 12, 5001, 'Polarizing');

insert into proof(proofid, prooflength, proofwidth, packageorderform_orderformid, filter) 
values(106, 11, 15, 5002, NULL);

insert into proof(proofid, prooflength, proofwidth, packageorderform_orderformid, filter) 
values(107, 11, 15, 5003, 'sepia');

insert into proof(proofid, prooflength, proofwidth, packageorderform_orderformid, filter) 
values(108, 11, 15, 5000, NULL);

insert into proof(proofid, prooflength, proofwidth, packageorderform_orderformid, filter) 
values(109, 11, 15, 5001, NULL);


SELECT * FROM proof;