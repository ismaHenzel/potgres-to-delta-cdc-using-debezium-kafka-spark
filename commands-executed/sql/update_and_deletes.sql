UPDATE bounties_fact
SET bounty_amount = 50000
WHERE character_id = 9;


UPDATE characters_dim
SET age = 300
WHERE character_id = 1;


DELETE FROM bounties_fact
WHERE character_id > 10;

DELETE FROM characters_dim
WHERE character_id > 10;