SET SERVEROUTPUT ON;
SET VERIFY OFF;
clear screen;



CREATE OR REPLACE PROCEDURE printPredictedLoan(result IN Number)
IS

res number :=0;
BEGIN

res := result;
dbms_output.put_line('Predicted Loan for Customer is : '||res);


END printPredictedLoan;
/



ACCEPT Prediction_income  PROMPT "Enter Income of Customer for prediction:";
ACCEPT PropertyArea  PROMPT "Enter Property Area of Customer:"; 
DECLARE
X number;
Y number;
X_square number :=0;
X_Y number :=0;
PropertyArea varchar2(60);
sum_X number :=0;
sum_Y number :=0;
sum_X_square number :=0;
sum_X_Y number:= 0;
Prediction_income number;
N NUMBER :=0;
C NUMBER :=0;
M NUMBER :=0;
R NUMBER :=0;
L NUMBER :=0;
whole_XSquare number :=0;
PropertyAreaNotFound EXCEPTION;
Neg_Value EXCEPTION; 

BEGIN
Prediction_income := &Prediction_income;
PropertyArea   := '&PropertyArea';

IF Prediction_income < 0 THEN
  RAISE Neg_Value;
END IF;

IF Lower(PropertyArea) = 'rural' THEN
	dbms_output.put_line('Regression in Rural site');
	FOR RowValue IN (SELECT * FROM Customer@site2) LOOP
	X         := RowValue.income;
	Y         := RowValue.loan;
	X_square := POWER(RowValue.income,2);
	X_Y       := X * Y;
	
	insert into Loan_Prediction values(X,Y,X_square,X_Y);

	 
	END LOOP;

	FOR RowValue IN (SELECT * FROM Customer_Loan_Prediction) LOOP
	 
	 
	 sum_X := sum_X + RowValue.X;
	 sum_Y := sum_Y + RowValue.Y;
	 sum_X_square := sum_X_square + RowValue.X_square; 
	 sum_X_Y := sum_X_Y + RowValue.X_Y;
	 N :=N+1;
	 
	 
	END LOOP;
	whole_XSquare :=POWER(sum_X,2);
	C := ((N * sum_X_Y)-(sum_X * sum_Y)) / ((N * sum_X_square)- whole_XSquare);
	M := (1/N) * (sum_Y - (C * sum_X));
	/*dbms_output.put_line(sum_X);
	dbms_output.put_line(sum_Y);
	dbms_output.put_line(sum_X_square);
	dbms_output.put_line(N);
	dbms_output.put_line(C);*/
	R := C*Prediction_income +M;
	L := ROUND(R,0);
	printPredictedLoan(L);
	

ELSIF Lower(PropertyArea) = 'urban' THEN 
    dbms_output.put_line('Regression in Urban site');
	FOR RowValue IN (SELECT * FROM Customer) LOOP
	X         := RowValue.income;
	Y         := RowValue.loan;
	X_square := POWER(RowValue.income,2);
	X_Y       := X * Y;
	insert into Loan_Prediction values(X,Y,X_square,X_Y);

	 
	END LOOP;

	FOR RowValue IN (SELECT * FROM Customer_Loan_Prediction) LOOP
	 
	 
	 sum_X := sum_X + RowValue.X;
	 sum_Y := sum_Y + RowValue.Y;
	 sum_X_square := sum_X_square + RowValue.X_square; 
	 sum_X_Y := sum_X_Y + RowValue.X_Y;
	 N :=N+1;
	 
	 
	END LOOP;
	whole_XSquare :=POWER(sum_X,2);
	C := ((N * sum_X_Y)-(sum_X * sum_Y)) / ((N * sum_X_square)- whole_XSquare);
	M := (1/N) * (sum_Y - (C * sum_X));
	/*dbms_output.put_line(sum_X);
	dbms_output.put_line(sum_Y);
	dbms_output.put_line(sum_X_Squared);
	dbms_output.put_line(N);
	dbms_output.put_line(C);*/
	R := C*Prediction_income +M;
	L := ROUND(R,0);
	printPredictedLoan(L);
ELSE 
    RAISE PropertyAreaNotFound;	
END IF;	

EXCEPTION
	WHEN PropertyAreaNotFound THEN
		DBMS_OUTPUT.PUT_LINE('This PropertyArea is not Found on our Coverage.');

	WHEN Neg_Value THEN
		DBMS_OUTPUT.PUT_LINE('Income can not be negative.');

END;
/
/*SELECT * FROM  Loan_Prediction;*/