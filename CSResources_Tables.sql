

Create table Courses_T(
Course_ID integer auto_increment,
Course_Name varchar(60),
Date_Added timestamp default current_timestamp,
constraint Course_T_PK primary key (Course_ID)
);

Create table Resource_Type_T(
Resource_Type char(1) not null,
Resource_Type_Name varchar(20) not null,
constraint Resource_Type_T_PK primary key (Resource_Type)
);

Create table Resources_T(
Resource_ID integer auto_increment,
Resource_Type char(1) not null,
Title varchar(100) not null,
Author varchar(100),
Web_Address varchar(2083),
Publication_Date date,
Description varchar(10000),
Date_Added timestamp default current_timestamp,
constraint Resource_T_PK primary key (Resource_ID),
foreign key (Resource_Type) references Resource_Type_T(Resource_Type)
);

Create table Papers_T(
Paper_ID integer,
Journal varchar(100),
constraint Paper_T_PK primary key (Paper_ID),
foreign key (Paper_ID) references Resources_T(Resource_ID)
);

Create table Books_T(
Book_ID integer,
Publisher varchar(100),
constraint Book_T_PK primary key (Book_ID),
foreign key (Book_ID) references Resources_T(Resource_ID)
);

Create table CourseResource_T(
Course_ID integer,
Resource_ID integer,
foreign key (Course_ID) references Courses_T(Course_ID),
foreign key (Resource_ID) references Resources_T(Resource_ID),
CONSTRAINT CourseResource_T_PK PRIMARY KEY (Course_ID, Resource_ID)
);