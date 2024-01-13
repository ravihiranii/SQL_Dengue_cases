
-- Create a database:
create database dengue;


-- Create table:
CREATE TABLE dengue_cases(
	Name VARCHAR(30),
	Fever CHAR(3),
	Headache CHAR(3),
	Jointpain CHAR(3),
	Bleeding CHAR(3),
	Dengue CHAR(3)
);


select * from dengue_cases

-- While importing csv data get an error of VARCHAR datatype is (30) so can't store a 
-- longer name so i use alter statement to modify the column  
ALTER TABLE dengue_cases
ALTER COLUMN Name TYPE VARCHAR(50)



-- Here I'm importing a dengue csv file:
COPY dengue_cases(Name, Fever, Headache, Jointpain, Bleeding, Dengue)
FROM 'D:\SQL\My Projects\Dengue Cases Analysis\Dengue Dataset\dengue.csv'
DELIMITER ','
CSV HEADER;


