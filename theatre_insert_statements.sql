INSERT INTO consessions (
	item_id, 
	item_name,
	item_type,
	upc,
	price 
)VALUES (
	1,
	'popcorn lg',
	'food',
	888888,
	5.50
);

INSERT INTO movie(
	movie_id,
	movie_name,
	rating
)VALUES (
	1,
	'Sonic the hedge hog 3',
	'5/5'
);

INSERT INTO customer(
	customer_id,
	customer_name,
	billing_info
)VALUES (
	1,
	'Bill Bo Baggins',
	'visa last 4:4444'
); 

INSERT INTO showings(
	showing_id,
	movie_id,
	price,
	seets,
	show_time 
) VALUES (
	1,
	1,
	15.50,
	150,
	'2022-07-02 19:30:00'
);

INSERT INTO ticket(
	ticket_id,
	movie_id,
	seat_num,
	showing_id, 
	disability_true
)VALUES (
	1,
	1,
	30,
	1,
	FALSE 
);

INSERT INTO purchase(
	transacion_id,
	concession_id,
	ticket_id,
	customer_id
) VALUES (
	1,
	1,
	1,
	1
);
	










)