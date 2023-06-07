create database satate_info;
use state_info;
create table state_info(id int,st_name varchar(30),st_capital varchar(30),no_of_distict varchar(30),st_econamy varchar(30),st_areas bigint,pre_cap_income bigint,st_forest int,agri_area varchar(30),st_population varchar(30),st_code int,st_rain_length varchar(30),st_river_no int,st_export bigint );
select * from state_info;
alter table state_info add column st_weather varchar(30);
alter table state_info add column st_panchayath varchar(30);
alter table state_info add column st_no_thaluk int;
alter table state_info drop column st_weather;
alter table state_info rename column st_panchayath to st_no_panchayath;
alter table state_info rename column no_of_distict to state_dist_no;
alter table state_info rename column st_capital to capital_city;
alter table state_info rename column st_areas to area_covered;
alter table state_info rename column st_forest to green_covered;
desc state_info;
alter table state_info modify column st_no_panchayath bigint;
alter table state_info modify column st_no_thaluk bigint;
alter table state_info modify column pre_cap_income int;
alter table state_info modify column green_covered varchar(50);


