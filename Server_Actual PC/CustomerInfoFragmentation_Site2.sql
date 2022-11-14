CREATE TABLE GY_Customer AS (SELECT loan_ID, customer_Name, education, self_Employed FROM  CustomerInfo
WHERE education LIKE'Graduate' AND self_Employed LIKE'Yes');

CREATE TABLE GN_Customer AS (SELECT loan_ID, customer_Name, education, self_Employed FROM  CustomerInfo
WHERE education LIKE'Graduate' AND self_Employed LIKE'No');

CREATE TABLE NY_Customer AS (SELECT loan_ID, customer_Name, education, self_Employed FROM  CustomerInfo
WHERE education LIKE'Not Graduate' AND self_Employed LIKE'Yes');

CREATE TABLE NN_Customer AS (SELECT loan_ID, customer_Name, education, self_Employed FROM  CustomerInfo
WHERE education LIKE'Not Graduate' AND self_Employed LIKE'No');


SELECT * FROM GY_Customer;
SELECT * FROM GN_Customer;
SELECT * FROM NY_Customer;
SELECT * FROM NN_Customer;
