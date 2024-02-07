-- connect exampledb docker docker host.docker.internal 5432

-- Insert additional data into characters_dim
INSERT INTO characters_dim (first_name, last_name, age, occupation, affiliation)
VALUES
    ('Monkey', 'D. Luffy', 19, 'Captain', 'Straw Hat Pirates'),
    ('Roronoa', 'Zoro', 21, 'Swordsman', 'Straw Hat Pirates'),
    ('Nami', '', 20, 'Navigator', 'Straw Hat Pirates'),
    ('Vinsmoke', 'Niji', 23, 'Prince', 'Germa 66'),
    ('Vinsmoke', 'Ichiji', 24, 'Prince', 'Germa 66'),
    ('Vinsmoke', 'Yonji', 20, 'Prince', 'Germa 66'),
    ('Portgas', 'D. Ace', 24, 'Fire Fist', 'Whitebeard Pirates'),
    ('Boa', 'Hancock', 29, 'Shichibukai', 'Kuja Pirates');

-- Insert additional data into bounties_fact
INSERT INTO bounties_fact (character_id, bounty_amount)
VALUES
    (9, 500000000.00),
    (10, 320000000.00),
    (11, 66000000.00),
    (12, 580000000.00),
    (13, 120000000.00),
    (14, 49000000.00),
    (15, 550000000.00),
    (16, 780000000.00);
