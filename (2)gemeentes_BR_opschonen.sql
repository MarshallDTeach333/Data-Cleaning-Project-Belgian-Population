

SELECT *
FROM gemeentes_BR;

ALTER TABLE gemeentes_BR
DROP COLUMN Postcode,
DROP COLUMN Oppervlakte,
DROP COLUMN Inwonertal;

UPDATE gemeentes_BR
SET Gemeente = 'Brussel'
WHERE Gemeente LIKE 'Brussel%';

ALTER TABLE gemeentes_BR
ADD COLUMN Provincie VARCHAR(50);

UPDATE gemeentes_BR
SET Provincie = 'Brussel';

ALTER TABLE gemeentes_BR
ADD COLUMN Gewest VARCHAR(50);

UPDATE gemeentes_BR
SET Gewest = 'Brussels-Gewest';