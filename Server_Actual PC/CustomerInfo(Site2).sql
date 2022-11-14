clear screen;
DROP TABLECASCADE CONSTRAINTS;
DROP TABLE CustomerInfo CASCADE CONSTRAINTS;

CREATE TABLE CustomerInfo(
	loan_ID number, 
        customer_Name varchar2(30),
	education varchar2(30),
	self_Employed varchar2(30),
	PRIMARY KEY(loan_ID));


insert into CustomerInfo (loan_ID, customer_Name, education, self_Employed) values (1, 'Fatema Sultana', 'Not Graduate', 'No'); 
insert into CustomerInfo (loan_ID, customer_Name, education, self_Employed) values (2, 'Tamanna Tara', 'Graduate', 'No'); 
insert into CustomerInfo (loan_ID, customer_Name, education, self_Employed) values (3, 'Nabatan Hasana', 'Not Graduate', 'No'); 
insert into CustomerInfo (loan_ID, customer_Name, education, self_Employed) values (4, 'Rokeya Begum', 'Graduate', 'No'); 
insert into CustomerInfo (loan_ID, customer_Name, education, self_Employed) values (5, 'Halima Begum', 'Graduate', 'No'); 
insert into CustomerInfo (loan_ID, customer_Name, education, self_Employed) values (6, 'Sayera Khatun', 'Graduate', 'No'); 
insert into CustomerInfo (loan_ID, customer_Name, education, self_Employed) values (7, 'Nasif Ahmed', 'Not Graduate', 'No'); 
insert into CustomerInfo (loan_ID, customer_Name, education, self_Employed) values (8, 'Asif Iqbal', 'Graduate', 'No'); 
insert into CustomerInfo (loan_ID, customer_Name, education, self_Employed) values (9, 'Ishtiaq Ahmed', 'Not Graduate', 'No'); 
insert into CustomerInfo (loan_ID, customer_Name, education, self_Employed) values (10, 'Abdul Rahim', 'Not Graduate', 'No'); 
insert into CustomerInfo (loan_ID, customer_Name, education, self_Employed) values (11, 'Riana Islam', 'Graduate', 'No'); 
insert into CustomerInfo (loan_ID, customer_Name, education, self_Employed) values (12, 'Faiza Nawar', 'Not Graduate', 'No'); 
insert into CustomerInfo (loan_ID, customer_Name, education, self_Employed) values (13, 'Alif Islam', 'Graduate', 'No'); 
insert into CustomerInfo (loan_ID, customer_Name, education, self_Employed) values (14, 'Foysal Rahim', 'Graduate', 'No'); 
insert into CustomerInfo (loan_ID, customer_Name, education, self_Employed) values (15, 'Farhana Yesmin', 'Graduate', 'No'); 
insert into CustomerInfo (loan_ID, customer_Name, education, self_Employed) values (16, 'Sajib Habib', 'Not Graduate', 'No');
insert into CustomerInfo (loan_ID, customer_Name, education, self_Employed) values (17, 'Hasib Hossain', 'Graduate', 'Yes'); 
insert into CustomerInfo (loan_ID, customer_Name, education, self_Employed) values (18, 'Nargis AKhter', 'Graduate', 'Yes'); 
insert into CustomerInfo (loan_ID, customer_Name, education, self_Employed) values (19, 'Parvin Islam', 'Graduate', 'Yes'); 
insert into CustomerInfo (loan_ID, customer_Name, education, self_Employed) values (20, 'Samiha Yesmin', 'Not Graduate', 'Yes'); 
insert into CustomerInfo (loan_ID, customer_Name, education, self_Employed) values (21, 'Tarin Hoque', 'Graduate', 'Yes'); 
insert into CustomerInfo (loan_ID, customer_Name, education, self_Employed) values (22, 'Nurul Karim', 'Graduate', 'Yes'); 
insert into CustomerInfo (loan_ID, customer_Name, education, self_Employed) values (23, 'Nabil Jahan', 'Not Graduate', 'Yes'); 
insert into CustomerInfo (loan_ID, customer_Name, education, self_Employed) values (24, 'Nuha Habiba', 'Graduate', 'Yes'); 
insert into CustomerInfo (loan_ID, customer_Name, education, self_Employed) values (25, 'Ifty Hasanul', 'Not Graduate', 'Yes'); 
insert into CustomerInfo (loan_ID, customer_Name, education, self_Employed) values (26, 'Abiha Karim', 'Graduate', 'Yes'); 
insert into CustomerInfo (loan_ID, customer_Name, education, self_Employed) values (27, 'Fahima Rubi', 'Not Graduate', 'Yes'); 
insert into CustomerInfo (loan_ID, customer_Name, education, self_Employed) values (28, 'Nabiha Joti', 'Not Graduate', 'Yes'); 



select * from CustomerInfo;

commit;
 

