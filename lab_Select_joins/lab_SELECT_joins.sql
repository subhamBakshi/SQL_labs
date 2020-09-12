create table role(Id INT , name VARCHAR(255) NOT NULL,primary key(Id));
create table skills(Id INT primary key, description VARCHAR(255) NULL, name varchar(255) NOT NULL);
create table post_type(Id INT primary key,name VARCHAR(255) NOT NULL);
create table department(Id INT primary key, name VARCHAR(255) NOT NULL);

create table degree
(
  Id INT primary key,
  department_id INT  NOT NULL,
  name VARCHAR(255) NOT NULL,
  FOREIGN KEY(department_id) REFERENCES department(Id)
);

create table profile
(
  Id INT primary key,
  address VARCHAR(255) NOT NULL,
  batch VARCHAR(255) NOT NULL,
  degree_id INT  NOT NULL,
  designation VARCHAR(255) NULL,
  gender VARCHAR(255) NOT NULL,
  FOREIGN KEY(degree_id) REFERENCES degree(Id)
);

create table higher_degree
(
  Id INT primary key,
  degree_name VARCHAR(255) NULL,
  university_name VARCHAR(255) NULL,
  profile_id INT  NOT NULL,
  FOREIGN KEY(profile_id) REFERENCES profile(Id)
);

create table experience
(
  Id INT primary key,
  company_name VARCHAR(255) NOT NULL,
  currentvalue INT NOT NULL,
  enddate DATE NULL,
  startdate DATE NOT NULL,
  profile_id INT  NOT NULL,
  FOREIGN KEY(profile_id) REFERENCES profile(Id)
);

create table project
(
  Id INT primary key,
  name varchar(255) NOT NULL,
  no_of_members INT NOT NULL,
  profile_id INT  NOT NULL,
  short_description varchar(255) NULL,
  FOREIGN KEY(profile_id) REFERENCES profile(Id)
);

create table profile_skills
(
  skill_id INT ,
  profile_id INT ,
  PRIMARY KEY(skill_id,profile_id)
);

create table user_new
(
  Id INT  primary key,
  emailid VARCHAR(255) NOT NULL,
  name VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  phoneINT VARCHAR(255) NOT NULL,
  profile_id INT NULL,
  role_id INT NOT NULL,
  username VARCHAR(255) NOT NULL,
 FOREIGN KEY(profile_id) REFERENCES profile(Id),
FOREIGN KEY(role_id) REFERENCES role(Id)
);


desc user_new;

CREATE table querytable
(
  Id INT  NOT NULL  Primary Key,
  content VARCHAR(255) NOT NULL,
  dateof DATE NOT NULL,
  parent_id INT  NULL,
  user_id INT NOT NULL,
  FOREIGN KEY(parent_id) REFERENCES querytable(Id),
  FOREIGN KEY(user_id) REFERENCES user_new(Id)
);

desc querytable;
create table event
(
  Id INT  primary key,
  dateof DATE NOT NULL,
  descriptionValue VARCHAR(255) NULL,
  invitation VARCHAR(255) NOT NULL,
  name VARCHAR(255) NOT NULL,
  organiser_id INT NOT NULL,
  FOREIGN KEY(organiser_id) REFERENCES user_new(Id)
);

create table post
(
  Id INT primary key,
  content VARCHAR(255) NOT NULL,
  dateof DATE NOT NULL,
  type_id INT  NOT NULL,
  user_id INT NOT NULL,
  FOREIGN KEY(type_id) REFERENCES post_type(Id),
  FOREIGN KEY(user_id) REFERENCES user_new(Id)
);