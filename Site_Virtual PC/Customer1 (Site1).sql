clear screen;
DROP TABLECASCADE CONSTRAINTS;
DROP TABLE Customer CASCADE CONSTRAINTS;

CREATE TABLE Customer(
	loan_ID number, 
	income number,
	propertyArea varchar2(30),
	loan number,
	PRIMARY KEY(loan_ID));


insert into Customer (loan_ID, income, propertyArea, loan) values (1, 110000, 'Urban', 39343); 
insert into Customer (loan_ID, income, propertyArea, loan) values (2, 130000, 'Urban', 46205); 
insert into Customer (loan_ID, income, propertyArea, loan) values (3, 150000, 'Urban', 37731); 
insert into Customer (loan_ID, income, propertyArea, loan) values (4, 200000, 'Urban', 43525); 
insert into Customer (loan_ID, income, propertyArea, loan) values (5, 220000, 'Urban', 39891); 
insert into Customer (loan_ID, income, propertyArea, loan) values (6, 290000, 'Urban', 56642); 
insert into Customer (loan_ID, income, propertyArea, loan) values (7, 300000, 'Urban', 60150); 
insert into Customer (loan_ID, income, propertyArea, loan) values (8, 320000, 'Urban', 54445); 
insert into Customer (loan_ID, income, propertyArea, loan) values (9, 320000, 'Urban', 64445); 
insert into Customer (loan_ID, income, propertyArea, loan) values (10, 370000, 'Urban', 57189); 
insert into Customer (loan_ID, income, propertyArea, loan) values (11, 400000, 'Urban', 55794); 
insert into Customer (loan_ID, income, propertyArea, loan) values (12, 410000, 'Urban', 57081); 
insert into Customer (loan_ID, income, propertyArea, loan) values (13, 450000, 'Urban', 61111); 
insert into Customer (loan_ID, income, propertyArea, loan) values (14, 400000, 'Urban', 56957); 
insert into Customer (loan_ID, income, propertyArea, loan) values (15, 490000, 'Urban', 67938); 
insert into Customer (loan_ID, income, propertyArea, loan) values (16, 510000, 'Urban', 66029); 
insert into Customer (loan_ID, income, propertyArea, loan) values (17, 530000, 'Urban', 83088); 
insert into Customer (loan_ID, income, propertyArea, loan) values (18, 590000, 'Urban', 81363); 
insert into Customer (loan_ID, income, propertyArea, loan) values (19, 600000, 'Urban', 93940); 
insert into Customer (loan_ID, income, propertyArea, loan) values (20, 680000, 'Urban', 91735); 
insert into Customer (loan_ID, income, propertyArea, loan) values (21, 710000, 'Urban', 98273); 
insert into Customer (loan_ID, income, propertyArea, loan) values (22, 790000, 'Urban', 101302); 
insert into Customer (loan_ID, income, propertyArea, loan) values (23, 820000, 'Urban', 113812); 
insert into Customer (loan_ID, income, propertyArea, loan) values (24, 870000, 'Urban', 109431); 
insert into Customer (loan_ID, income, propertyArea, loan) values (25, 900000, 'Urban', 105582); 
insert into Customer (loan_ID, income, propertyArea, loan) values (26, 910000, 'Urban', 109999); 


select * from Customer;

commit;

--create table Loan_Prediction(X number,Y number,X_square number, X_Y number);
 
