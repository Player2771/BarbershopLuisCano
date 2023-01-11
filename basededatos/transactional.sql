START TRANSACTION
SELECT * FROM tblcustomers;
insert into  tblcustomers (Name,Email,MobileNumber,Gender,Details) 
values('ricardo','richi@gmail.com','2231923821','Hombre','Muy buen cliente');
COMMIT;
SELECT * FROM 	tblcustomers;