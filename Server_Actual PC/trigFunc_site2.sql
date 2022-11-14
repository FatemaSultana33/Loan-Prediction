Update Customer SET income=200200 WHERE loan_ID=4;
SET SERVEROUTPUT ON;

CREATE OR REPLACE TRIGGER CustomerUpdateIncome
BEFORE UPDATE 
OF income
ON Customer
FOR EACH ROW
DECLARE
	A Customer.loan_ID%TYPE;
	B Customer.income%TYPE;
	C Customer.propertyArea%TYPE;
	D Customer.loan%TYPE;
BEGIN
	A := :OLD.loan_ID;
	B := :OLD.income;
	C := :OLD.propertyArea;
	C := :OLD.loan;
	
	INSERT INTO Customer VALUES(A, B, C, D);
END;
/

--Select * from Customer;


CREATE OR REPLACE TRIGGER CustomerUpdateLoan 
AFTER UPDATE 
OF loan
ON Customer
FOR EACH ROW
DECLARE
BEGIN
	DBMS_OUTPUT.PUT_LINE('Loan Value Updated');
END;
/

UPDATE Customer SET loan=46208 WHERE loan_ID=2;
UPDATE Customer SET loan=39899 WHERE loan_ID=5;



CREATE OR REPLACE TRIGGER InsertintoCustomer 
BEFORE INSERT 
ON Customer
DECLARE
BEGIN
	DBMS_OUTPUT.PUT_LINE('A Row is Inserted in Customer');
END;
/
INSERT INTO Customer VALUES(27, 910030, 'rural', 107899);



CREATE OR REPLACE TRIGGER InsertOrDeletefromCustomer 
AFTER INSERT OR DELETE 
ON Customer
DECLARE
BEGIN
	DBMS_OUTPUT.PUT_LINE('A Row is Edited');
END;
/

DELETE FROM Customer WHERE loan_ID=27;



CREATE OR REPLACE FUNCTION inCustomer(A IN Customer.loan_ID%TYPE)
RETURN NUMBER
IS

BEGIN
	DBMS_OUTPUT.PUT_LINE(A);
	return A+10; 
END inCustomer;
/

SELECT inCustomer(10) from dual;