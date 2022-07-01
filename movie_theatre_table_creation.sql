--I start with the simple goods our buisess will sell, and a table for 
--keeping track of customers. 

CREATE TABLE consessions(
	item_id SERIAL primary KEY, 
	item_name VARCHAR(100),
	item_type VARCHAR(100),
	upc INTEGER NOT NULL,
	price NUMERIC(3,2)
);
--movie is pulled into showing to allow the generation of a multitude of showings for one movie
--then, the same is done with showing so the the theatre can sell a multitude of ticketts per showing
CREATE TABLE movie(
	movie_id SERIAL primary KEY,
	movie_name VARCHAR(100),
	rating VARCHAR(10)
);

CREATE TABLE customer(
	customer_id  SERIAL primary KEY,
	customer_name VARCHAR(100),
	billing_info VARCHAR(100),
	birthyear VARCHAR(100) 
);

CREATE TABLE showings(
	showing_id SERIAL PRIMARY KEY,
	movie_id INTEGER NOT NULL,
	price NUMERIC(8,2),
	seets INTEGER NOT NULL,
	show_time TIMESTAMP WITHOUT TIME ZONE,
	FOREIGN KEY (movie_id) REFERENCES movie(movie_id)
);

CREATE TABLE ticket(
	ticket_id SERIAL PRIMARY KEY,
	movie_id INTEGER NOT NULL,
	seat_num INTEGER NOT NULL,
	showing_id INTEGER NOT NULL,
	disability_true BOOLEAN,
	FOREIGN KEY (showing_id) REFERENCES showings(showing_id),
	FOREIGN KEY (movie_id) REFERENCES movie(movie_id)
);
--here we combine the above columns into the purchases column to track sales
CREATE TABLE purchase(
	transacion_id SERIAL PRIMARY KEY,
	concession_id INTEGER,
	ticket_id INTEGER,
	customer_id INTEGER NOT NULL,
	date_ DATE DEFAULT CURRENT_DATE,
	FOREIGN KEY (concession_id) REFERENCES consessions(item_id),
	FOREIGN KEY (ticket_id) REFERENCES ticket(ticket_id),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);




	