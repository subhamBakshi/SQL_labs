-- PROGRESSION 0:
-- You will have two files create-tables.sql and insert-queries.sql.
-- Copy the content of create-tables.sql and execute it in sql developer to create tables in oracle.
-- Copy the code from insert-queries.sql and execute it in sql developer to insert data into tables created.
-- The insert-queries.sql contains two records for every table as a sample.
-- Use it as a reference and add 10 more such records to every table.
-- PROGRESSION 1:
-- -- Joins --
-- Write a query to return all the rows from user_new table and role tables where there is matching user_new.role_id value in both the usernew and role tables. Display role.name and user_new.name in ascending order.
SELECT role.name,user_new.name
FROM role
INNER JOIN user_new
ON role.id=user_new.id;


-- Write a query to return all rows from the user_new table and only those rows from the role table where the joined fields are equal. Display role.name and user_new in ascending order.

SELECT * FROM role JOIN user_new
ON role.id=user_new.id;

-- Write a query to return all names from the user_new table where there is matching user_new.role_id value in both the user_new and role tables.

SELECT user_new.name
FROM user_new
INNER JOIN role
ON role.id=user_new.id;

-- Write a query to return all user_new.phonenumber, user_new.emailid, profile.batch, department.name, profile.designation, experience.company_name from user_new table where there is matching
SELECT user_new.phonenumber, user_new.emailid, profile.batch, department.name, profile.designation, experience.company_name
FROM user_new
INNER JOIN (
profile INNER JOIN user_new
ON user_new.id=profile.id)
INNER JOIN (
profile INNER JOIN degree
ON degree.id=profile.degree_id)
INNER JOIN (
degree INNER JOIN department
ON department_id=degree.id)
INNER JOIN (
profile INNER JOIN experience
ON experience.profile_id=profile.id)
WHERE user_new.name='abcd' AND experience.currentvalue=1;


SELECT user_new.phoneINT, user_new.emailid, profile.batch, department.name, profile.designation, experience.company_name
from user_new  ,profile ,department ,experience 

where user_new.id=profile.id and 
profile.id=experience.profile_id and 
user_new.name = 'abcd' and 
experience.currentValue=1

-- profile_id in both user_new and profile table,
-- degree.department_id and department.id in degree and department
-- profile.id and experience.profile_id in experience and profile table
-- where user_name.name = "ProGrad" and experience.currentValue=3


 
