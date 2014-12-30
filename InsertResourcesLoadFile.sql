load data infile 'ResourcesDeDuped.txt'
	into table Resources_T
fields terminated by ','
lines terminated by '\r\n'
(Resource_Type, Title, Author, Web_Address, Publication_Date, Description);