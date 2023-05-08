CREATE TABLE apartmentType(
TypeID INT PRIMARY KEY not null,
TypeNames VARCHAR(200)not null,
TypePrice int not null,
)
CREATE TABLE apartment(
ApartmentID INT PRIMARY KEY not null,
ApartmentNumber VARCHAR(200) not null,
ApartmentArea FLOAT not null,
TypeID INT not null,
foreign key (TypeID) references apartmentType(TypeID)
)
create table bank(
BankID INT PRIMARY KEY not null,
BankName VARCHAR(200),
Registrationcod int unique not null
)
CREATE TABLE tenant(
TenantID INT PRIMARY KEY not null,
TenantNames VARCHAR(200) not null,
TenantlegalAddress varchar(200) unique not null,
BankID int not null,
BankDirector varchar(200) not null,
Characteristic varchar,
foreign key(BankID)references bank(BankID)
)
CREATE TABLE rent(
RentID INT PRIMARY KEY not null,
TenantID int not null,
ApartmentID int not null,
Termfrom date not null,
Termupto date not null,
foreign key(TenantID)references tenant(TenantID),
foreign key(ApartmentID)references apartment(ApartmentID)

)

create table counts(
CountsID INT PRIMARY KEY not null,
CountsSumma int not null,
CountsData date not null,
CountsPenia int not null,
TenantID int not null,
foreign key(TenantID)references tenant(TenantID)
)





insert into apartmentType values (1,'room',200);
insert into apartmentType values (2,'warehouse',500);
select* from apartmentType;
insert into apartment values (1, 1,150,1);
insert into apartment values (2, 2,100,1);
insert into apartment values (3,3,200,2);
select* from apartment;
insert into bank values (1, 'Privat24',4567);
insert into bank values (2,'Oshad', 1234);
select* from bank;


insert into tenant values (1, 'BTS','Україна, **1, місто Львів, Вулиця Дорошенка, будинок **А',1,'Petrenko Dmytro Tarasovych','');
insert into tenant values (2,'AKA','Україна, **1, місто Київ, ВУЛИЦЯ Героїв УПА, будинок **Д', 2, 'Ochkivskyi Danylo Olegovych','');
select* from tenant;


insert into counts values (1,2020,'2022-04-04',0,1);

insert into counts values (2,3020,'2022-03-04',0,1);
select*from counts;

insert into rent values (1,1,2,'2022-02-03','2023-02-03');
insert into rent values (2,2,1,'2021-02-03','2022-02-03');
insert into rent values (3,2,2,'2021-09-07','2022-07-09');     
select*from rent;
select* from apartmentType;
select* from apartment;
select* from bank;
select* from tenant;
select*from counts;
select*from rent;