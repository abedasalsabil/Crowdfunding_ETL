--------------------------
Drop Table campaign;

Create Table campaign (
	cf_id INT NOT NULL,
	Primary Key(cf_id),
	contact_id INT NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	company_name VARCHAR NOT NULL,
	description VARCHAR NOT NULL,
	goal FLOAT NOT NULL,
	pledged FLOAT NOT NULL,
	outcome VARCHAR NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR NOT NULL,
	currency VARCHAR NOT NULL,
	launched_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR NOT NULL,
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	subcategory_id VARCHAR NOT NULL,
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

--------------------------
Select * from campaign;


-- Employees-----
--------------------------
Drop Table category;

Create Table category (
	category_id VARCHAR NOT NULL,
	Primary Key(category_id),
	category VARCHAR NOT NULL
);

Select * from category;
--------------------------


--------------------------
Drop Table subcategory;

Create Table subcategory (
	subcategory_id VARCHAR NOT NULL,
	Primary Key(subcategory_id),
	subcategory VARCHAR NOT NULL
);

Select * from subcategory;
--------------------------


--------------------------
Drop Table contacts;

Create Table contacts (
	contact_id INT NOT NULL,
	Primary key(contact_id),
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	email VARCHAR NOT NULL
);

Select * from contacts;
---------------------------

