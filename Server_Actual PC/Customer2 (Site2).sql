clear screen;
DROP TABLECASCADE CONSTRAINTS;
DROP TABLE Customer CASCADE CONSTRAINTS;

CREATE TABLE Customer(
	loan_ID number, 
	income number,
	propertyArea varchar2(30),
	loan number,
	PRIMARY KEY(loan_ID));


insert into Customer (loan_ID, income, propertyArea, loan) values (1, 247000, 'rural', 42510); 
insert into Customer (loan_ID, income, propertyArea, loan) values (2, 250000, 'rural', 43522); 
insert into Customer (loan_ID, income, propertyArea, loan) values (3, 252000, 'rural', 44900); 
insert into Customer (loan_ID, income, propertyArea, loan) values (4, 255000, 'rural', 45843); 
insert into Customer (loan_ID, income, propertyArea, loan) values (5, 257000, 'rural', 47200); 
insert into Customer (loan_ID, income, propertyArea, loan) values (6, 260000, 'rural', 48560); 
insert into Customer (loan_ID, income, propertyArea, loan) values (7, 263000, 'rural', 49930); 
insert into Customer (loan_ID, income, propertyArea, loan) values (8, 265000, 'rural', 51290); 
insert into Customer (loan_ID, income, propertyArea, loan) values (9, 268000, 'rural', 53110); 
insert into Customer (loan_ID, income, propertyArea, loan) values (10, 270000, 'rural', 54470); 
insert into Customer (loan_ID, income, propertyArea, loan) values (11, 273000, 'rural', 56280); 
insert into Customer (loan_ID, income, propertyArea, loan) values (12, 275000, 'rural', 58133); 
insert into Customer (loan_ID, income, propertyArea, loan) values (13, 278000, 'rural', 59924); 
insert into Customer (loan_ID, income, propertyArea, loan) values (14, 280000, 'rural', 62196); 
insert into Customer (loan_ID, income, propertyArea, loan) values (15, 283000, 'rural', 64462); 
insert into Customer (loan_ID, income, propertyArea, loan) values (16, 283000, 'rural', 69090); 
insert into Customer (loan_ID, income, propertyArea, loan) values (17, 268000, 'rural', 54230); 
insert into Customer (loan_ID, income, propertyArea, loan) values (18, 257000, 'rural', 46925); 
insert into Customer (loan_ID, income, propertyArea, loan) values (19, 300000, 'rural', 58640); 
insert into Customer (loan_ID, income, propertyArea, loan) values (20, 304000, 'rural', 59030); 
insert into Customer (loan_ID, income, propertyArea, loan) values (21, 310000, 'rural', 61040); 
insert into Customer (loan_ID, income, propertyArea, loan) values (22, 317000, 'rural', 63099); 
insert into Customer (loan_ID, income, propertyArea, loan) values (23, 320000, 'rural', 64500); 
insert into Customer (loan_ID, income, propertyArea, loan) values (24, 325000, 'rural', 65000); 
insert into Customer (loan_ID, income, propertyArea, loan) values (25, 360000, 'rural', 68244); 
insert into Customer (loan_ID, income, propertyArea, loan) values (26, 365000, 'rural', 69300); 


select * from Customer;

commit;
 

