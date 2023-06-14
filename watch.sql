CREATE DATABASE MLA_INFORMATION;
USE  MLA_INFORMATION;

CREATE TABLE Mla_info(id  int not null,c_name varchar(30) not null,constinuency_name varchar(30) not null,
party varchar(30) unique,votes bigint unique,vote_lead bigint unique,
vote_rate varchar(30) not null unique,c_age int not null unique,no_of_win int not null unique,party_symbol varchar(30)  not null unique);
SELECT * FROM Mla_info;

INSERT INTO Mla_info VALUES(1,'Shashikla annasaheb jolle','Nippani','BJP',73348,7292,'39.14%',28,2,'Rose');
INSERT INTO Mla_info VALUES(2,'Ganesh hukkeri','Chikoodi sadalga','INC',128349,78509,'69.82%',30,3,'Elephant');
INSERT INTO Mla_info VALUES(3,'Laxman','athani','congress',564737,674742,'90.55%',56,8,'tiger');
INSERT INTO Mla_info VALUES(4,'bharmgoud','kagwad','JDS',7587478,575746,'80.67%',45,7,'Lion');
INSERT INTO Mla_info VALUES(5,'Mahendra','kudachi','Nationalist congress party',84983,48837,'56.00%',70,4,'Kite');
INSERT INTO Mla_info VALUES(6,'duryodhan','raybag','All india trinamool congress',467366,99854,'70.00%',90,1,'chair');
INSERT INTO Mla_info VALUES(7,'nikhil katti','hukkeri','bahujan samaj party',5366326,50955,'60.00%',40,5,'Laptop');
INSERT INTO Mla_info VALUES(8,'baralachandra jarakiholi','Arabhai','communist party',578743,58674,'40.00%',50,6,'Bottle');
INSERT INTO Mla_info VALUES(9,'ramesh jarakiholi','gokak','aam aadmi party',75764,983774,'20.00%',41,12,'Bag');
INSERT INTO Mla_info VALUES(10,'satish','yemkannmardi','samajwadi party',354424,939736,'42.00%',42,13,'tree');
INSERT INTO Mla_info VALUES(11,'asif salt','belgaum uttar','awani party',356553,49873,'43.00%',43,14,'plant');
INSERT INTO Mla_info VALUES(12,'abhay patil','belgaum dakshin','delhi janta party',3562652,66365,'44.00%',44,15,'grass');
INSERT INTO Mla_info VALUES(13,'laxmi ravindra','khanpur','IJP',442442,37737,'45.00%',49,16,'door');
INSERT INTO Mla_info VALUES(14,'vittal halagekar','kittur','IPP',873773,39847,'46.00%',46,17,'table');
INSERT INTO Mla_info VALUES(15,'babasaheb','Bhailhongal','NALP',47883,47747,'47.00%',47,18,'temple');
INSERT INTO Mla_info VALUES(16,'Mahantesh','saundatti yellamma','RUC',6435536,47773,'48.00%',48,19,'shop');
INSERT INTO Mla_info VALUES(17,'vishwas','Ramdurg','VSP',456366,3747474,'49.00%',52,20,'shoes');
INSERT INTO Mla_info VALUES(18,'ashok','badami','NOTA',98737,38726,'58.00%',53,32,'Star');
INSERT INTO Mla_info VALUES(19,'ramappa','hungud','RPIE',2626,288834,'59.00%',54,33,'sun');
INSERT INTO Mla_info VALUES(20,'siddu','indi','SUCI',388772,93883,'88.00%',55,34,'earth');
SELECT * FROM Mla_info;

/*--------------using constraints---------------------*/
create table watches(id int NOT NULL unique,BRAND_NAME varchar(30) ,MODEL_NMAE VARCHAR(30)not null,MODEL_NUM varchar(30)NOT NULL,TYPE VARCHAR(20) NOT NULL,COLOUR VARCHAR(30),
PRICE INT,BLUETOOUH VARCHAR(30),TUCH VARCHAR(20),SHAPE VARCHAR(30)NOT null);

INSERT INTO watches value(1,'titan','new','aj56','analog','black',12000,'no blutooth','no touch','round');
insert into watches value(2,'fastract','new1','ap65','analog','steel',20000,'no blutooth','no touch','square');
insert into watches value(3,'fosssil','new2','ok34','analog','gold','50964','no blotooth','no touch','round');
insert into watches value(4,'noise','new3','oj56','android','black','5096','with blotooth','touch','rectangle');
insert into watches value(5,'citizen','mew4','sk120','analog and digital','yellow',12855,'blutooth','buttons','round');
insert into watches value(6,'hublot','new5','sd654','analog','brown','265648','no blotooth','no touch','round');
insert into watches value(7,'tissot','new6','ofy4','digital','silver','534359','blotooth','touch','round');
insert into watches value(8,'omegal','new7','mos6615','analog and digital','green','509264','no blotooth','touch','round');
insert into watches value(9,'iwc','mew8','kli6166','digital','comoflage',65652,'blutooth','touch','round');
insert into watches value(10,'i watch','new9','i65','os','white','30565','blotooth','touch','rectangle');
insert into watches value(11,'casio','new10','ksmk531','both','black','55532','no blotooth','no touch','round');
insert into watches value(12,'zenith','new11','lkm6512','digital','violet','565964','no blotooth','no touch','square');
insert into watches value(13,'tissot','new12','mks3530','analog','maroon','525964','no blotooth','no touch','oval');
insert into watches value(14,'rolex','new13','rlx5432','analog','nyon','50964','no blotooth','no touch','oval');
insert into watches value(15,'piaget','new14','ada565','analog','android','1250964','blotooth','touch','square');
insert into watches value(16,'hublot','new15','kdf266','analog','platinum','5096456','blotooth','touch','round');

/*--------using where--------------*/

select * from watches where id=3 ; 
select * from watches where tuch='no touch'; 
select * from watches where type='analog';
select * from watches where shape='round';
select * from watches where BRAND_NAME='hublot'; 

/*------------ update -----------*/

update watches set BRAND_NAME='tag herur' where id=13;
update watches set colour='silver' where id=2; 
update watches set bluetoouh='bluetooh'  where model_nmae='new5';
update watches set type='digital' where id=1;
update watches set bluetoouh='bluetooh'where id=2;
update watches set BLUETOOUH='no bluetooth',type='digital' where tuch='no touch';

/*----------------and-------------*/
select * from watches where id=1 and TYPE='digital';
select * from watches where BLUETOOUH='bluetooth' and SHAPE='oval';
select * from watches where colour='brown' and tuch='no touch';
select * from watches where MODEL_NMAE='new9' and SHAPE='rectangle';

/*----------------or-------------------*/
select * from watches where id=1 or TYPE='digital';
select * from watches where colour='black' or tuch='no touch';
select * from watches where MODEL_Num='oj56' or colour='gold';
select * from watches where BRAND_NAME='noise' or type='analog';

/*-------------------in and notin-----------*/
select * from watches where id in(3,6,9,12,15);
select * from watches where BRAND_NAME in ('tissot');
select * from watches where COLOUR in ('black');


select * from watches where id not in(2,5,8,11,14);
select * from watches where shape not in('round');

/*-----------------between---------------*/
select * from watches where id between 5 and 12;
select * from watches where BRAND_NAME between 'citizen' and 'piaget'; *
select * from watches where model_nmae between 'sd654' and 'kli6166'; *

/*-----------concat--------------*/
select concat(brand_name,model_nmae) from watches;
select concat(id,shape)from watches;
select concat(shape,colour)from watches;

/*----------ltrim--------------*/
select ltrim(BRAND_NAME) from watches;
select ltrim(tuch) from watches;
select ltrim(colour)from watches;

/*----------rtrim--------------*/
select rtrim(model_num) from watches;
select rtrim(type) from watches;
select rtrim(shape) from watches;


/*----------groupby------------*/
select BRAND_NAME,max(price) from watches group by colour;

select * from watches;