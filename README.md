# SQL_Dengue_Cases_Analysis

SQL project to analyze a Dengue cases data:

This is complete SQL Analysis project, To Analyze the health care data and help the health care organization to understand the symptoms behaviour and effects in Dengue disease

# Setup
To access these all files i recommand you to click the green "clone or download" button and then click "Download ZIP". Now you should extract all of the files to the location you want to edit your code.

# Database and tools
- PostgreSQL
- PgAdmin4

# Project Information
I download this dataset from kaggle website, this datasets include 1000000 rows of peoples data has columns are Name, Fever, Headache, Jointpain, Bleeding, Dengue.

First i create database and create table and import the csv dataset into SQL database
Perform analysis i used aggregate function COUNT(), SELECT & WHERE, GROUP BY Clause, Operators, CASE expression, CONCAT() Function and CTE(Common Table EXpression).

Here I have pickup 15 Questions to do Analysis:

- How many individuals are there in the dataset?
- How many individuals have Dengue?
- List the names of individuals who have all symptoms (Fever, Headache, JointPain, Bleeding) but no Dengue.
- What is the percentage of individuals with Fever?
- Identify individuals with JointPain and Bleeding, but no other symptoms.
- How many individuals have at least two symptoms?
- List the names of individuals with no symptoms.
- What is the percentage of individuals with each symptom (Fever, Headache, JointPain, Bleeding, Dengue)?
- List the names of individuals with Fever but without Dengue.
- How many individuals have experienced Bleeding?
- List the names of individuals who have neither JointPain nor Headache.
- How many individuals have all symptoms (Fever, Headache, JointPain, Bleeding, Dengue)?
- How many individuals have exactly three symptoms?
- List the names of individuals who don't have a Headache but may have other symptoms.
- Count the number of individuals for each unique combination of symptoms, including Dengue.

# Project Summary

- 811875 people have atleast two symptoms.
- There are 31446 People who has no symptoms including Dengue.
- 50% of people has JointPain and Bleeding symptoms.
- 49% of people has Fever, Headche & Dengue symptoms.
- 249481 people has Fever symptoms but No Dengue.
- There are 31033 people has All symptoms including Dengue.
- 500231 people has experienced Bleeding.
- 32 unique combination pair of symptoms are found.


