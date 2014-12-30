--Creates a trigger to populate the Resource_ID into the Books_T table everytime a book resource is added to the books table

create trigger populate_book_id_trigger after insert on Resources_T
for each row
	insert into Books_T (Book_ID)
		select Resource_ID from Resources_T where Title = new.title;
	
