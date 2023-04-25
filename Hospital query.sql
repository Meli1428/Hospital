-------------------------------------------------------------------
-----Screen #1 queries

select d.Doctor_First_Name, d.Doctor_Last_Name
from dbo.Doctor d join dbo.Department dpt on dpt.Department_Number = d.Department_Number
where dpt.Department_Number = 'D20114';


INSERT INTO DBO.Patient VALUES ('P80110','James','Mike','36','Eagles point',null,'876546','Tampa','Florida');
----------------------------------------------------------------------------------------------------------------
-- Screen #2 queries--
select dc.Doctor_First_Name, dc.Doctor_Last_Name, dgr.Degree_type, dgr.Major, dc.Doctor_Number
from dbo.degree dgr join dbo.Doctor dc on dc.Doctor_Number = dgr.Doctor_Number
join dbo.Department dpt on dpt.Department_Number = dc.Department_Number
where dpt.Department_Number = 'D20114';

select * from dbo.Insurance_Company;

select n.Nurse_First_Name, n.Nurse_Last_Name, n.Certification, cer.Certification
from dbo.Certification cer join dbo.Nurse n
on cer.Credential = n.Certification
join dbo.Department dep on dep.Department_Number = n.Department_Number
where dep.Department_Number = 'D20114';

select Diagnosis_Description, Operation
from dbo.Diagnosis_Code dx join dbo.Operation_Type op on op.Operation_Name = dx.Diagnosis_Description;

INSERT INTO DBO.Operation VALUES ('P80110','D40105','CESAREAN SECTION WITH STERILIZATION','20210414','12:09','16:40','IP-05');


---- when user clicks the claims hyperlink then the claims under him/her will be displayed
select * from dbo.Claim where Patient_Number = 'P80110';

--------------------------------------------------------------------------------------------------------------------------------



INSERT INTO DBO.Department VALUES ('D20105','O10201','+19834567824');
INSERT INTO DBO.Department VALUES ('D20106','O10202','+17654893456');
INSERT INTO DBO.Department VALUES ('D20107','O10203','+17428796542');
INSERT INTO DBO.Department VALUES ('D20108','O10204','+17298736573');
INSERT INTO DBO.Department VALUES ('D20109','O10205','+17987345612');
INSERT INTO DBO.Department VALUES ('D20110','O10206','+17654893434');
INSERT INTO DBO.Department VALUES ('D20111','O10207','+17278645261');
INSERT INTO DBO.Department VALUES ('D20112','O10208','+17198000928');
INSERT INTO DBO.Department VALUES ('D20113','O10209','+17600774627');
INSERT INTO DBO.Department VALUES ('D20114','O10210','+17898765434');

Select * from dbo.Department

INSERT INTO DBO.Nurse VALUES ('N20010','Jessica','Wander','D20105','CNRN','1998','N20010');
INSERT INTO DBO.Nurse VALUES ('N20011','James','Biffle','D20106','CNS-BC','1996','N20010');
INSERT INTO DBO.Nurse VALUES ('N20012','Richard','Wisener','D20105','CPEN','1998','N20010');
INSERT INTO DBO.Nurse VALUES ('N20013','Robert','Chia','D20114','CPHON','2014','N20012');
INSERT INTO DBO.Nurse VALUES ('N20014','John','Courtland','D20110','CPHQ','2016','N20011');
INSERT INTO DBO.Nurse VALUES ('N20015','Michael','Felch','D20109','CWCN-AP','2015','N20010');
INSERT INTO DBO.Nurse VALUES ('N20016','Mary','Harkleroad','D20108','CWOCN','2010','N20010');
INSERT INTO DBO.Nurse VALUES ('N20017','Patricia','Hipple','D20108','NEA-BC','2005','N20011');
INSERT INTO DBO.Nurse VALUES ('N20018','Jennifer','Imler','D20111','NNP-BC','2009','N20010');
INSERT INTO DBO.Nurse VALUES ('N20019','Linda','Lakin','D20112','NP-C','2020','N20012');

select * from dbo.Nurse;

insert into dbo.Certification values ('CNRN',    'Certified Neuroscience Registered Nurse',    'abnncertfication.org');
insert into dbo.Certification values ('CNS-BC',    'Clinical Nurse Specialist, Core',    'www.nursingworld.org');
insert into dbo.Certification values ('CPEN',    'Certified Pediatric Emergency Nurse',    'bcencertifications.org');
insert into dbo.Certification values ('CPHON',    'Certified Pediatric Hematology Oncology Nurse',    'oncc.org');
insert into dbo.Certification values ('CPHQ',    'Certified Professional in Healthcare Quality',    'cphq.org');
insert into dbo.Certification values ('CWCN-AP',    'Certified Wound Care Nurse-Advanced Practice',    'wocncb.org');
insert into dbo.Certification values ('CWOCN',    'Certified Wound Ostomy Continence Nurse',    'wocncb.org');
insert into dbo.Certification values ('NEA-BC',    'Nurse Executive, Advanced',    'www.nursingworld.org');
insert into dbo.Certification values ('NNP-BC',    'NNP-BC - Neonatal Nurse Practitioner',    'nccwebsite.org');
insert into dbo.Certification values ('NP-C',    'Adult Nurse Practitioner',    'aanpcert.org');

select * from dbo.Certification;

INSERT INTO DBO.Doctor VALUES ('D40100','Metilda','Susanna','D20105','O10201','+19834567824','D40100');
INSERT INTO DBO.Doctor VALUES ('D40101','Daniel','Margaret','D20109','O10205','+17654893434','D40100');
INSERT INTO DBO.Doctor VALUES ('D40102','Thomas','Sandra','D20109','O10209','+19834567824','D40101');
INSERT INTO DBO.Doctor VALUES ('D40103','Susan','Ashley','D20110','O10206','+17898765434','D40100');
INSERT INTO DBO.Doctor VALUES ('D40104','Sunaina','Kimberly','D20110','O10203','+17654893434','D40101');
INSERT INTO DBO.Doctor VALUES ('D40105','Fred','Emily','D20114','O10203','+19834567824','D40102');
INSERT INTO DBO.Doctor VALUES ('D40106','Christopher','Donna','D20114','O10201','+19834567824','D40102');
INSERT INTO DBO.Doctor VALUES ('D40107','Kenneth','Michelle','D20110','O10201','+19834567824','D40100');
INSERT INTO DBO.Doctor VALUES ('D40108','Kevin','Carol','D20111','O10201','+19834567824','D40100');
INSERT INTO DBO.Doctor VALUES ('D40109','George','Amanda','D20114','O10209','+19834567824','D40101');

Select * from dbo.Doctor

INSERT INTO DBO.Degree VALUES ('D40109','Degree of Medicine','MBBS','Arizona State University','1990');
INSERT INTO DBO.Degree VALUES ('D40109','Doctor of Osteopathic Medicine','MBBS','University of South Florida','1989');
INSERT INTO DBO.Degree VALUES ('D40107','Degree of Medicine','MBBS','Arizona State University','1980');
INSERT INTO DBO.Degree VALUES ('D40105','Doctor of Podiatric Medicine ','MBBS','Arizona State University','1991');
INSERT INTO DBO.Degree VALUES ('D40105','Degree of Medicine','MBBS','Arizona State University','1993');
INSERT INTO DBO.Degree VALUES ('D40103','Doctor of Dental Medicine ','Dental','Arizona State University','1988');
INSERT INTO DBO.Degree VALUES ('D40102','Degree of Medicine','Dental','Arizona State University','1989');
INSERT INTO DBO.Degree VALUES ('D40101','Doctor of Osteopathic Medicine','MBBS','University of South Florida','1989');
INSERT INTO DBO.Degree VALUES ('D40101','Degree of Medicine','MBBS','Arizona State University','1990');
INSERT INTO DBO.Degree VALUES ('D40100','Degree of Medicine','MBBS','Arizona State University','1990');

Select * from dbo.Degree;

INSERT INTO DBO.Patient VALUES ('P80100','Brandie','Cady','40','Railroad Ave','201-B','3-33613','Alexander City','Florida');
INSERT INTO DBO.Patient VALUES ('P80101','Boston','Butch','45','','5','Water St	','Andalusia','Alabama');
INSERT INTO DBO.Patient VALUES ('P80102','Apple','Dannon','40','Maple Ave	','C505','A-32644',' Anniston','Alaska');
INSERT INTO DBO.Patient VALUES ('P80103','Cola','Darena','49','9th St	','10','7-34344','Athens','Arizona');
INSERT INTO DBO.Patient VALUES ('P80104','Day','Coolie','50','Locust St	','X201','B-873763','Andalusia','Arizona');
INSERT INTO DBO.Patient VALUES ('P80105','Eminem','Heavily','60','10th St	','S809','787483','Clanton','Arkansas');
INSERT INTO DBO.Patient VALUES ('P80106','Joey','Jojo','55','W 2nd St	','11','5-32343','Clanton','Little Rock');
INSERT INTO DBO.Patient VALUES ('P80107','Kadie','Kaden','29','W 3rd St	','D-11','O-87364','Dothan','Arkansas');
INSERT INTO DBO.Patient VALUES ('P80108','Kalimaa','Kadem','35','Smith Rd	','13','343556-O','Greenville','Huntsville');
INSERT INTO DBO.Patient VALUES ('P80109','Karan','Karo','37','Dogwood Ln	','201-E','876546','Jasper','California');

Select * from dbo.Patient

INSERT INTO DBO.Operation_Type VALUES ('CAROTID ARTERY STENT PROCEDURE WITH CC','1.50','100000.00');
INSERT INTO DBO.Operation_Type VALUES ('CESAREAN SECTION WITH STERILIZATION','2.50','50000.90');
INSERT INTO DBO.Operation_Type VALUES ('CESAREAN SECTION WITHOUT STERILIZATION','0.59','60000.00');
INSERT INTO DBO.Operation_Type VALUES ('CHOLECYSTECTOMY WITH C.D.E. WITH MCC','1.50','10000.29');
INSERT INTO DBO.Operation_Type VALUES ('CHOLECYSTECTOMY WITH C.D.E. WITH CC','1.00','20000.45');
INSERT INTO DBO.Operation_Type VALUES ('CHOLECYSTECTOMY WITH C.D.E. WITHOUT CC/MCC','1.50','30000.00');
INSERT INTO DBO.Operation_Type VALUES ('LAPAROSCOPIC CHOLECYSTECTOMY WITHOUT C.D.E. MCC','1.35','70000.12');
INSERT INTO DBO.Operation_Type VALUES ('LAPAROSCOPIC CHOLECYSTECTOMY WITHOUT C.D.E. CC','2.00','80000.00');
INSERT INTO DBO.Operation_Type VALUES ('INGUINAL AND FEMORAL HERNIA PROCEDURES WITH MCC','1.25','10000.00');
INSERT INTO DBO.Operation_Type VALUES ('INGUINAL AND FEMORAL HERNIA PROCEDURES WITH CC','1.50','20000.00');

Select * from dbo.Operation_Type

INSERT INTO DBO.Diagnosis_Code VALUES ('CAROTID ARTERY STENT PROCEDURE WITH CC','035','Carotid endarterectomy');
INSERT INTO DBO.Diagnosis_Code VALUES ('CESAREAN SECTION WITH STERILIZATION','783','Cesarean section');
INSERT INTO DBO.Diagnosis_Code VALUES ('CESAREAN SECTION WITHOUT STERILIZATION','786','Cesarean section');
INSERT INTO DBO.Diagnosis_Code VALUES ('CHOLECYSTECTOMY WITH C.D.E. WITH MCC','411','Cholecystectomy');
INSERT INTO DBO.Diagnosis_Code VALUES ('CHOLECYSTECTOMY WITH C.D.E. WITH CC','412','Cholecystectomy');
INSERT INTO DBO.Diagnosis_Code VALUES ('CHOLECYSTECTOMY WITH C.D.E. WITHOUT CC/MCC','413','Cholecystectomy');
INSERT INTO DBO.Diagnosis_Code VALUES ('LAPAROSCOPIC CHOLECYSTECTOMY WITHOUT C.D.E. MCC','417','Cholecystectomy');
INSERT INTO DBO.Diagnosis_Code VALUES ('CAROTID ARTERY STENT PROCEDURE WITHOUT CC/MCC','036','Carotid endarterectomy');
INSERT INTO DBO.Diagnosis_Code VALUES ('INGUINAL AND FEMORAL HERNIA PROCEDURES WITH MCC','350','Inguinal hernia repair');
INSERT INTO DBO.Diagnosis_Code VALUES ('CHOLECYSTECTOMY EXCEPT BY LAPAROSCOPE WITHOUT C.D.E. WITH MCC','414','Cholecystectomy');

Select * from dbo.Diagnosis_Code

INSERT INTO DBO.Insurance_Company VALUES ('Blue Cross Blue Shield',+18798765342,'Marion','Arizona','B-894575');
INSERT INTO DBO.Insurance_Company VALUES ('United Health Care',+17383748393,'Montgomery','California','894575');
INSERT INTO DBO.Insurance_Company VALUES ('Humana',+17835251098,'Ozark','Arizona','C-728373');
INSERT INTO DBO.Insurance_Company VALUES ('Cigna',+16785437907,'Prichard','New Jersey','X-298398');
INSERT INTO DBO.Insurance_Company VALUES ('Aetna',+18785643823,'Phenix City','Miami','0019928');
INSERT INTO DBO.Insurance_Company VALUES ('American Family Insurance',+16548976074,'Scottsboro','Alaska','A-232341');
INSERT INTO DBO.Insurance_Company VALUES ('Centene',+18927363555,'Talladega','Arkansas','23231X');
INSERT INTO DBO.Insurance_Company VALUES ('Anthem Health Insurance',+18728373837,'Cordova','Arkansas','223323');
INSERT INTO DBO.Insurance_Company VALUES ('CVS Health',+19092873546,'Ketchikan','New York','A-12323');
INSERT INTO DBO.Insurance_Company VALUES ('GuideWell',+17265448447,'Kodiak','Texas','019723');

Select * from dbo.Insurance_Company

INSERT INTO DBO.Operation VALUES ('P80100','D40100','CESAREAN SECTION WITHOUT STERILIZATION','20151015','15:30','16:40','OP-10');
INSERT INTO DBO.Operation VALUES ('P80101','D40100','CESAREAN SECTION WITH STERILIZATION','20191101','9:30','10:40','OP-01');
INSERT INTO DBO.Operation VALUES ('P80100','D40100','CESAREAN SECTION WITHOUT STERILIZATION','20200414','7:30','9:40','OP-03');
INSERT INTO DBO.Operation VALUES ('P80106','D40104','CHOLECYSTECTOMY WITH C.D.E. WITH MCC','20160303','11:30','12:40','OP-11');
INSERT INTO DBO.Operation VALUES ('P80103','D40107','LAPAROSCOPIC CHOLECYSTECTOMY WITHOUT C.D.E. MCC','20200909','8:00','09:00','OP-12');
INSERT INTO DBO.Operation VALUES ('P80105','D40109','LAPAROSCOPIC CHOLECYSTECTOMY WITHOUT C.D.E. CC','20180909','23:30','00:00','OP-1');
INSERT INTO DBO.Operation VALUES ('P80106','D40103','INGUINAL AND FEMORAL HERNIA PROCEDURES WITH CC','20170908','15:30','16:40','OP-7');
INSERT INTO DBO.Operation VALUES ('P80101','D40100','CHOLECYSTECTOMY WITH C.D.E. WITHOUT CC/MCC','20171112','11:10','12:40','OP-8');
INSERT INTO DBO.Operation VALUES ('P80105','D40101','CHOLECYSTECTOMY WITH C.D.E. WITH CC','20200101','13:30','14:40','OP-04');
INSERT INTO DBO.Operation VALUES ('P80106','D40102','CESAREAN SECTION WITH STERILIZATION','20191231','15:30','16:40','OP-05');

Select * from dbo.Operation;

INSERT INTO DBO.Claim VALUES ('C-121090','Anthem Health Insurance','P80102','035','100000.00');
INSERT INTO DBO.Claim VALUES ('C-121091','Aetna','P80101','350','10000.00');
INSERT INTO DBO.Claim VALUES ('C-121092','Blue Cross Blue Shield','P80104','411','10000.29');
INSERT INTO DBO.Claim VALUES ('C-121093','CVS Health','P80109','412','20000.45');
INSERT INTO DBO.Claim VALUES ('C-121094','GuideWell','P80104','413','30000.00');
INSERT INTO DBO.Claim VALUES ('C-121095','United Health Care','P80103','417','70000.12');
INSERT INTO DBO.Claim VALUES ('C-121096','American Family Insurance','P80106','786','70000.00');
INSERT INTO DBO.Claim VALUES ('C-121097','Centene','P80106','412','20000.45');
INSERT INTO DBO.Claim VALUES ('C-121098','CVS Health','P80108','035','100000.00');
INSERT INTO DBO.Claim VALUES ('C-121099','Humana','P80102','411','10000.29');

Select * from dbo.Claim;





