

SELECT *
FROM gemeentes_VL;

ALTER TABLE gemeentes_VL
DROP COLUMN Type,
DROP COLUMN Oppervlakte,
DROP COLUMN Aantal_inwoners;

ALTER TABLE gemeentes_VL
ADD COLUMN Gewest VARCHAR(50);

UPDATE gemeentes_VL
SET Gewest = 'Vlaams-Gewest';