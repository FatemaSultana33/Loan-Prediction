CREATE VIEW viewA_Customer AS 
   SELECT loan_ID, income, propertyArea, loan
   FROM Customer 
   WHERE income>=320000;

   
CREATE VIEW viewB_Customer AS 
   SELECT loan_ID, income, propertyArea, loan
   FROM Customer 
   WHERE loan>=255000;

CREATE VIEW viewC_CustomerInfo AS 
   SELECT loan_ID, customer_Name, education, self_Employed
   FROM CustomerInfo 
   WHERE education='Not Graduate';


select * from viewA_Custome;
select * from viewB_Customer;
select * from viewC_CustomerInfo;

 
