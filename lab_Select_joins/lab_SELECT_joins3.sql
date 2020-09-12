
insert into role(id,name)values(1,'designer');
insert into role(id,name)values(2,'guide');

select * from role;

insert into skills(id,description,name)values(1,'self learning','learn');
insert into skills(id,description,name)values(2,'technical skills','coding');
select * from skills;

insert into post_type(id,name)values(1,'business');
insert into post_type(id,name)values(2,'business');
select * from post_type;


insert into department(id,name)values(1,'bpo');
insert into department(id,name)values(2,'IT');
select * from department;

insert into degree(id,department_id,name)values(1,1,'EEE');
insert into degree(id,department_id,name)values(2,2,'ECE');

insert into profile(id,address,batch,degree_id,designation,gender)values(1,'London','En',1,'HR','Male');
insert into profile(id,address,batch,degree_id,designation,gender)values(2,'Chennai','For',2,'Manager','Female');

insert into higher_degree(id,degree_name,university_name,profile_id)values(1,'BE','MIT',1);
insert into higher_degree(id,degree_name,university_name,profile_id)values(2,'BE','STANFORD',2);


insert into experience(id,company_name,currentvalue,enddate,startdate,profile_id)values(2,'CTS',1,STR_TO_DATE('2008-11-11','%Y-%m-%d'),STR_TO_DATE('2019-11-11','%Y-%m-%d'),2);


insert into project(id,name,no_of_members,profile_id,short_description)values(1,'Alumini management',10,1,'for school and college');
insert into project(id,name,no_of_members,profile_id,short_description)values(2,'Library management',11,2,'for school and college');


insert into user_new(id,emailid,name,password,phoneINT,profile_id,role_id,username)values(1,'abcd@efgh.com','abcd','efgh',9884642005,1,1,'abcdefgh');
insert into user_new(id,emailid,name,password,phoneINT,profile_id,role_id,username)values(2,'ijkl@mnop.com','ijkl','mnop',9845621745,2,2,'ijklmnop');

insert into querytable(id,content,dateof,parent_id,user_id)values(1,'Alumini management',STR_TO_DATE('2008-11-11','%Y-%m-%d'),1,1);
insert into querytable(id,content,dateof,parent_id,user_id)values(2,'Library management',STR_TO_DATE('2008-11-19','%Y-%m-%d'),2,2);

insert into event(id,dateof,descriptionValue,invitation,name,organiser_id)values(1,STR_TO_DATE('2008-11-11','%Y-%m-%d'),'Alumni meet','OBA','ProGrad',1);
insert into event(id,dateof,descriptionValue,invitation,name,organiser_id)values(2,STR_TO_DATE('2008-11-11','%Y-%m-%d'),'Library opening','member','FACEPrep',2);