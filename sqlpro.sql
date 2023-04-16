REM   Script: DataBaseProject1
REM   DataBaseProject1

create table Patient( 
ID_Patient number(15) primary key , First_name varchar2(20) not null, 
Last_name varchar2(20) not null ,number_Patient number(10)unique , 
Disease_Patient varchar2(50),Blood_type_Patient varchar2(4) not null 
);

create table Donator( 
ID_Donator number(15) primary key ,First_name varchar2(20) not null , 
Last_name varchar2(20) not null ,Blood_type_Donator varchar2(4) not null 
);

create table Blood_Bank( 
ID_Blood_Bank number(15) primary key , 
name_Blood_Bank varchar2(40) not null , Location_Blood_Bank varchar2(100), 
Quantity number(5), Available_blood_types varchar2(15) 
);

create table Registration_team( 
ID_Reg number(15) primary key, Location_reg varchar2(20), First_name varchar2(20) not null, 
Last_name varchar2(20) not null, ID_patient  number(15)  
,ID_Donator number(15), 
constraint Patient_fk foreign key(ID_patient) references Patient(ID_patient), 
constraint Donator_fk foreign key(ID_Donator) references Donator(ID_Donator) 
);

create table Manager( 
ID_Manager number(15) primary key , address varchar2(30), 
First_name varchar2(20) not null ,Last_name varchar2(20) not null, 
ID_Blood_Bank number(15), 
constraint Blood_Bank_fk foreign key(ID_Blood_Bank) references Blood_Bank(ID_Blood_Bank) 
);

create table Blood( 
ID_Blood number(15) primary key , Blood_types varchar2(4) not null , 
ID_Blood_Bank number(15) , ID_Patient number(15),ID_Donator number(15), 
constraint Blood_Bank_fkk foreign key(ID_Blood_Bank) references Blood_Bank(ID_Blood_Bank), 
constraint Patient_fkk foreign key(ID_patient) references Patient(ID_patient), 
constraint Donator_fkk foreign key(ID_Donator) references Donator(ID_Donator) 
);

insert into Patient values(44285453854,'Nasser', 'Mostafa',543,'Anemia','A+');

insert into Patient values(44528453854,'Hmood', 'Abdaullah',674,'Anemia','B+');

insert into Patient values(44678453854,'Ahmad', 'Ali',234,'Anemia','AB');

insert into Patient values(44761453854,'Ali', 'Saad',753,'Anemia','A');

select * from Patient;

update Patient  
set First_name = 'Ahmad'  
where ID_patient = 44285453854;

select * from Patient;

update Patient  
set Last_name = 'Ali'  
where ID_patient = 44285453854;

select * from Patient;

insert into Donator values(54285453854,'Nasser', 'Mostafa','A+');

insert into Donator values(54528453854,'Hmood', 'Abdaullah','B+');

insert into Donator values(54678453854,'Ahmad', 'Ali','AB');

insert into Donator values(54761453854,'Ali', 'Saad','A');

select * from Donator;

update Donator  
set First_name = 'Ahmad'  
where ID_Donator = 54285453854;

select * from Donator;

update Donator  
set Last_name = 'Ali'  
where ID_Donator= 54285453854;

select * from Donator;

insert into Blood_Bank values(15485432,'military hospital','Riyadh', 5000,'A,B,AB,A+,B+,O-');

select * from Blood_Bank;

insert into Registration_team values(600,'c1','Ali', 'Mostafa',44285453854,54285453854);

insert into Registration_team values(601,'c2','Nasser', 'Abdaullah',44528453854,54528453854);

insert into Registration_team values(602,'c3','Ahmad', 'Ali',44678453854,54678453854);

insert into Registration_team values(603,'c4','Huda','Mohammad',44761453854,54761453854);

select * from Registration_team;

insert into Manager values(9954533,'Riyadh','Ahmad', 'Mostafa',15485432);

select * from Manager;

insert into Blood values(2003,'A+',15485432,44285453854,54285453854);

insert into Blood values(2004,'B+',15485432,44528453854,54528453854);

insert into Blood values(2005,'O-',15485432,44678453854,54678453854);

insert into Blood values(2006,'AB',15485432,44761453854,54761453854);

select * from Blood;

select ID_PATIENT , FIRST_NAME || ' '|| LAST_NAME as "Full Name" , BLOOD_TYPE_PATIENT  
from PATIENT;

select ID_PATIENT , FIRST_NAME || ' '|| LAST_NAME as "Full Name" , BLOOD_TYPE_PATIENT  
from PATIENT where ID_PATIENT = 44285453854;

select ID_DONATOR , FIRST_NAME || ' '|| LAST_NAME as "Full Name" , BLOOD_TYPE_DONATOR  
from Donator;

select ID_DONATOR , FIRST_NAME || ' '|| LAST_NAME as "Full Name" , BLOOD_TYPE_DONATOR  
from Donator where ID_DONATOR = 54285453854;

select name_Blood_Bank,ID_Blood_Bank,Location_Blood_Bank,First_name ||' '|| Last_name as "Manager Name" 
from Blood_Bank natural join Manager ;

