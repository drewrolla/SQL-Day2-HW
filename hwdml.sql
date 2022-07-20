-- inserting info to tables

-- customer
INSERT INTO customer(
    first_name,
    last_name,
    email,
    phone,
    membership
) 
VALUES(
    'Andrew',
    'Wong',
    'andrew@wong.com',
    '7325550000',
    true
), (
    'Dominic',
    'Toretto',
    'family@onelastride.com',
    '8005882300',
    false
), (
    'Lara',
    'Croft',
    'tomb@raider.org',
    '1112328901',
    true
);

SELECT * FROM customer;


-- concessions
INSERT INTO concessions(
    snack_price,
    snack_name
) VALUES(
    5.00,
    'Popcorn'
), (
    2.50,
    'Hot Dogs'
);

SELECT * FROM concessions;


-- staff
INSERT INTO staff(
    first_name,
    last_name
) VALUES(
    'Bob',
    'Belcher'
), (
    'Linda',
    'Belcher'
), (
    'Gene',
    'Belcher'
), (
    'Tina',
    'Belcher'
), (
    'Louise',
    'Belcher'
);

SELECT * FROM staff;


-- movies
INSERT INTO movies(
    movie_name,
    runtime,
    genre,
    rating
) VALUES(
    'Thor Love and Thunder',
    119,
    'action-adventure',
    'PG13'
), (
    'Minions',
    87,
    'animation',
    'PG'
), (
    'Nope',
    135,
    'horror',
    'R'
);

SELECT * FROM movies;


-- tickets
INSERT INTO tickets(
    ticket_price,
    movie_id
) VALUES(
    5.50,
    1
), (
    5.00,
    2
), (
    7.50,
    3
);

SELECT * FROM tickets;


-- purchases
INSERT INTO purchases(
    purchase_total,
    customer_id,
    staff_id,
    ticket_id
) VALUES(
    20.00,
    3,
    5,
    3
), (
    100.00,
    1,
    3,
    2
), (
    5.00,
    2,
    1,
    1
);

SELECT * FROM purchases;