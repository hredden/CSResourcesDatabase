--Creates tables for CSResources database

Create table Courses_T(
Course_ID integer auto_increment constraint Course_T_PK primary key,
Course_Name varchar(60),
Date_Added Date default current_timestamp
);

Create table Resources_T(
Resource_ID integer auto_increment constraint Resource_T_PK primary key,
Resource_Type char not null,
Title varchar(100) not null,
Author varchar(100),
Web_Address varchar(2083),
Publication_Date date,
Description varchar(10000),
Date_Added date default current_timestamp
constraint Resources_T_Resource_Type_CHK check(Resource_Type in ('P', 'B', 'W', 'V'))
);

Create table Papers_T(
Paper_ID integer constraint Paper_T_PK primary key,
Journal varchar(100)
constraint Paper_T_FK foreign key (Paper_ID) references Resources_T(Resource_ID)
);

Create table Books_T(
Book_ID integer constraint Book_T_PK primary key,
Publisher varchar(100)
constraint Book_T_FK foreign key (Book_ID) references Resources_T(Resource_ID)
);

Create table CourseResource_T(
Course_ID integer constraint CourseResource_T_PK1 primary key,
Resource_ID integer constraint CourseResource_T_PK2 primary key,
constraint CourseResource_T_FK1 foreign key (Course_ID) references Course_T(Course_ID),
constraint CourseResource_T_FK2 foreign key (Resource_ID) references Resources_T(Resource_ID)
);