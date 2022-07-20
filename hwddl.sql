-- create tables
CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(50),
    phone VARCHAR(50),
    membership BOOLEAN
);

CREATE TABLE staff(
    staff_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

CREATE TABLE concessions(
    concession_id SERIAL PRIMARY KEY,
    snack_price NUMERIC(8,2)
);

CREATE TABLE movies(
    movie_id SERIAL PRIMARY KEY,
    movie_name VARCHAR(50),
    runtime INTEGER,
    genre VARCHAR(20)
);

-- tables with foreign keys
CREATE TABLE tickets(
    ticket_id SERIAL PRIMARY KEY,
    ticket_price NUMERIC(8,2),
    movie_id INTEGER,
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id)
    -- will add FK purchase_id after purchases table is created
);

CREATE TABLE purchases(
    purchase_id SERIAL PRIMARY KEY,
    purchase_total NUMERIC(8,2),
    customer_id INTEGER,
    staff_id INTEGER,
    ticket_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id),
    FOREIGN KEY (ticket_id) REFERENCES tickets(ticket_id)
);

-- messed up, forgot to add purchase_id column to table, will do that first
ALTER TABLE tickets
ADD COLUMN purchase_id INTEGER;

-- Adding FK to tickets table
ALTER TABLE tickets
ADD FOREIGN KEY (purchase_id) REFERENCES purchases(purchase_id);

-- adding snack name to concessions
ALTER TABLE concessions
ADD COLUMN snack_name VARCHAR(50);

-- another mess up, don't really need purchase_id under tickets
ALTER TABLE tickets DROP purchase_id;

-- adding another column to movies
ALTER TABLE movies
ADD COLUMN rating VARCHAR(10);