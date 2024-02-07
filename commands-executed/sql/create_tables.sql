-- connect exampledb docker docker host.docker.internal 5432

-- Dimension Table: characters
CREATE TABLE characters_dim (
    character_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    occupation VARCHAR(50),
    affiliation VARCHAR(50)
);

-- Insert data into characters_dim
INSERT INTO characters_dim (first_name, last_name, age, occupation, affiliation)
VALUES
    ('Usopp', 'Yasopp', 28, 'Sniper', 'Straw Hat Pirates'),
    ('Sanji', 'Vinsmoke', 21, 'Cook', 'Straw Hat Pirates'),
    ('Tony', 'Tony Chopper', 22, 'Doctor', 'Straw Hat Pirates'),
    ('Nico', 'Robin', 28, 'Archaeologist', 'Straw Hat Pirates'),
    ('Franky', 'Cutty Flam', 26, 'Shipwright', 'Straw Hat Pirates'),
    ('Brook', 'Soul King', 30, 'Musician', 'Straw Hat Pirates'),
    ('Jimbei', 'Knight of the Sea', 23, 'Helmsman', 'Straw Hat Pirates'),
    ('Edward', 'Newgate', 60, 'Pirate Captain', 'Whitebeard Pirates');

-- Fact Table: bounties
CREATE TABLE bounties_fact (
    bounty_id SERIAL PRIMARY KEY,
    character_id INT REFERENCES characters_dim(character_id),
    bounty_amount NUMERIC(12, 2)
);

-- Insert data into bounties_fact
INSERT INTO bounties_fact (character_id, bounty_amount)
VALUES
    (1, 200000000.00),
    (2, 330000000.00),
    (3, 100.00),
    (4, 130000000.00),
    (5, 94000000.00),
    (6, 33000000.00),
    (7, 500000000.00),
    (8, 3500000000.00);
