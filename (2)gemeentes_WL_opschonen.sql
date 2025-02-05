

SELECT *
FROM gemeentes_WL;

ALTER TABLE gemeentes_WL
DROP COLUMN Type,
DROP COLUMN Oppervlakte,
DROP COLUMN Aantal_inwoners;

ALTER TABLE gemeentes_WL
ADD COLUMN Gewest VARCHAR(50);

UPDATE gemeentes_WL
SET Gewest = 'Waals-Gewest';